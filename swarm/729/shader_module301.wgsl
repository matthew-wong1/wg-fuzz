struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648), Struct_1(-1012f, true));

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<u32>(1u, 65567u, 1u), 1130f, false, 0i), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 600f, true, -1i), Struct_3(vec3<u32>(56902u, 0u, 4294967295u), -1000f, true, -14663i), Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u), -1076f, false, 2147483647i), Struct_3(vec3<u32>(55832u, 1u, 4294967295u), 1000f, true, -39817i), Struct_3(vec3<u32>(0u, 85361u, 14294u), 829f, true, 53827i), Struct_3(vec3<u32>(125282u, 4294967295u, 0u), -1260f, false, 1i), Struct_3(vec3<u32>(4294967295u, 4294967295u, 118749u), -1735f, true, i32(-2147483648)), Struct_3(vec3<u32>(13152u, 1u, 1u), 300f, true, i32(-2147483648)), Struct_3(vec3<u32>(0u, 20684u, 47985u), -212f, true, 2147483647i), Struct_3(vec3<u32>(38506u, 23809u, 0u), 150f, false, 1i), Struct_3(vec3<u32>(64363u, 11297u, 4294967295u), 1091f, true, 8702i), Struct_3(vec3<u32>(4294967295u, 39822u, 8914u), -493f, false, -37080i), Struct_3(vec3<u32>(0u, 0u, 0u), -361f, false, 4808i), Struct_3(vec3<u32>(36938u, 1u, 1u), 805f, true, 62953i), Struct_3(vec3<u32>(73999u, 1u, 5457u), 1086f, true, 0i), Struct_3(vec3<u32>(2855u, 0u, 4294967295u), -1253f, true, 1i), Struct_3(vec3<u32>(4294967295u, 43373u, 21921u), 573f, false, -1i), Struct_3(vec3<u32>(41477u, 84211u, 12155u), -1000f, true, -1i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    return global2.b;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> f32 {
    global2 = Struct_2(63721i, global2.b);
    let var_0 = select(firstTrailingBit((vec4<u32>(arg_2.a.x, arg_2.a.x, arg_0.a.x, arg_2.a.x) & (vec4<u32>(arg_0.a.x, 12348u, arg_0.a.x, 4294967295u) & vec4<u32>(17797u, arg_2.a.x, 1u, arg_2.a.x))) | vec4<u32>(arg_2.a.x >> (51851u % 32u), arg_2.a.x | arg_2.a.x, 1u, arg_2.a.x)), vec4<u32>(48425u, 4294967295u, arg_0.a.x, _wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(arg_2.a.x, arg_2.a.x))), arg_2.a.xy)), select(select(!(!vec4<bool>(false, arg_0.c, false, true)), !vec4<bool>(arg_2.c, true, true, false), !vec4<bool>(true, arg_0.c, false, arg_0.c)), !vec4<bool>(global2.b.b, global0.b || false, global2.b.b, true), vec4<bool>(false, !(arg_0.c | false), !(global0.b && arg_2.c), func_1(global2.b).b)));
    var var_1 = vec4<bool>(arg_2.c, arg_0.c, arg_0.c, arg_0.c);
    var var_2 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a, _wgslsmith_mult_i32(arg_1, arg_1))), ~vec2<i32>(abs(abs(global2.a)), arg_2.d));
    var var_3 = vec3<bool>(var_1.x, any(select(select(!vec4<bool>(global2.b.b, false, arg_2.c, true), select(vec4<bool>(true, false, false, true), vec4<bool>(global2.b.b, global2.b.b, var_1.x, var_1.x), arg_2.c), select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_0.c, global0.b, arg_2.c), var_1.x)), !(!vec4<bool>(true, arg_2.c, var_1.x, true)), !(!vec4<bool>(true, global2.b.b, arg_0.c, global0.b)))), !((arg_2.d >= 1i) && false));
    return global0.a;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.b;
    let var_1 = 0u;
    global0 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(trunc(-1677f)), -925f != _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(1u, 19u)], 29066i, Struct_3(vec3<u32>(var_1, 60579u, var_1), 489f, arg_0.b.b, global2.a))))));
    let var_2 = -(((vec2<i32>(0i, arg_0.a) << (~vec2<u32>(var_1, 9874u) % vec2<u32>(32u))) >> (vec2<u32>(var_1, 1u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(-50201i, 2147483647i)), vec2<i32>(~1i, -2147483647i)));
    let var_3 = Struct_2(7465i, Struct_1(144f, true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_i32(select(u_input.b, 33982i, !(true || !global2.b.b)), 3158i);
    var var_0 = _wgslsmith_add_i32(-(i32(-1i) * -40458i), global2.a);
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(40608u), select(~4294967295u, 41556u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), abs(vec2<u32>(24234u, 22577u)))), vec3<u32>(1u, _wgslsmith_mult_u32(0u, abs(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 120489u, 46910u), vec3<u32>(1u, 55717u, 4294967295u)) >> (23711u % 32u)));
    var var_2 = func_1(Struct_1(global0.a, global0.b));
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * global2.b.a) + -1165f) + _wgslsmith_f_op_f32(sign(-1338f)))), true);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) * _wgslsmith_div_f32(global2.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.a), _wgslsmith_f_op_f32(sign(1158f))))), !all(vec4<bool>(global2.b.b, any(vec2<bool>(false, global0.b)), true, global2.b.b)));
    global2 = Struct_2(~u_input.b, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1000f - var_2.a)))), false));
    let var_4 = any(select(vec4<bool>(true, var_2.b, var_2.b, true), vec4<bool>(u_input.b != u_input.a, func_2(Struct_2(1i, global2.b)), func_2(Struct_2(global2.a, global2.b)), all(vec4<bool>(false, var_3.b, global0.b, var_3.b))), true)) | !var_3.b;
    let var_5 = Struct_2(u_input.b, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -976f), 586f), var_5.a & var_5.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, global0.a, 198f)))))), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 43016u, 10034u, 62142u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_u32(reverseBits(~abs(vec4<u32>(39994u, 1u, 0u, 1u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 11513u, 37260u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(26714u, abs(0u), firstTrailingBit(12589u), 73984u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 28452u), vec4<u32>(16618u, 48781u, 1512u, 12689u)), 1u, firstTrailingBit(26910u), ~1u))));
}

