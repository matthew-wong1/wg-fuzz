struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(4391u)), vec3<bool>(false, false, false), Struct_1(1u));

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 11>;

var<private> global4: vec2<f32> = vec2<f32>(592f, -282f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_0.a.a, 4294967295u)), _wgslsmith_mod_u32(~global2.a.a.a, ~arg_0.a.a)));
    global2 = Struct_3(Struct_2(arg_0.a), select(select(select(!global1.b, vec3<bool>(true, true, global2.b.x), true), select(global2.b, vec3<bool>(true, true, true), global0.x & global0.x), !vec3<bool>(true, global0.x, false)), !select(global2.b, !global1.b, global2.b.x), all(global2.b)), Struct_1(u_input.b));
    global3 = array<vec2<f32>, 11>();
    var var_1 = firstLeadingBit(vec4<i32>(0i, 39955i, ~u_input.c.x, _wgslsmith_div_i32(min(-15449i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.a, u_input.a), ~(-16430i)))));
    global1 = Struct_3(global2.a, vec3<bool>(!(!(global1.b.x && true)), true, global0.x), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(arg_0.a.a, 54988u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(33892u, global1.a.a.a), u_input.d))));
    return var_1.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(52691u, arg_2.a.a.a)) >> (~global1.a.a.a % 32u), global2.a.a.a, ~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(~arg_0.x, ~1u)), ~(~global1.c.a));
    global0 = vec2<bool>(global1.b.x, true);
    global0 = vec2<bool>(arg_2.b, select(!(arg_1.b.x | arg_2.b), ~select(-25236i, u_input.a, global1.b.x) == -u_input.c.x, arg_1.b.x));
    let var_1 = u_input.d.x;
    global1 = Struct_3(global1.a, arg_1.b, global1.c);
    return countOneBits(-vec3<i32>(min(func_3(Struct_2(arg_2.a.a)), i32(-1i) * -1i), firstLeadingBit(1i), u_input.c.x));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, -204f))))));
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), u_input.a ^ u_input.c.x), ~func_2(vec4<u32>(4294967295u, global2.c.a, global2.a.a.a, global2.a.a.a), Struct_3(Struct_2(Struct_1(u_input.d.x)), vec3<bool>(global0.x, false, global1.b.x), global1.a.a), Struct_4(Struct_2(global2.a.a), global0.x, -658f))) ^ _wgslsmith_div_vec3_i32(~(~vec3<i32>(2147483647i, -8966i, -21450i)), vec3<i32>(u_input.a, u_input.c.x, func_2(vec4<u32>(16500u, global1.c.a, 0u, 33716u), Struct_3(Struct_2(global2.a.a), global2.b, Struct_1(10914u)), Struct_4(Struct_2(Struct_1(u_input.b)), false, arg_0.x)).x)), firstLeadingBit(-_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c.x, u_input.a, -2147483647i), select(vec3<i32>(-7202i, u_input.c.x, u_input.a), vec3<i32>(-38190i, -2147483647i, 0i), vec3<bool>(global2.b.x, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - arg_0);
    global0 = global1.b.yx;
    var var_2 = global2.a.a.a;
    return ~(u_input.b | _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.a.a.a, 4294967295u, u_input.b, 4294967295u), vec4<u32>(global2.a.a.a, global1.a.a.a, 1u, global1.c.a)), ~vec4<u32>(u_input.d.x, u_input.b, u_input.b, 28521u))) <= u_input.d.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = global4.x;
    global3 = array<vec2<f32>, 11>();
    global1 = Struct_3(global1.a, !(!global2.b), global2.c);
    var var_1 = func_2(reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(59941u, 39534u, 53015u, 0u), vec4<u32>(u_input.b, 51418u, 87901u, global1.c.a)), ~vec4<u32>(global1.c.a, 819u, global1.c.a, 1u))) & ~firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, 66817u, 73891u)), Struct_3(global1.a, select(!select(global2.b, global2.b, vec3<bool>(true, arg_0.x, global0.x)), !vec3<bool>(global1.b.x, global1.b.x, true), arg_0.x), global2.c), Struct_4(global1.a, min(1i, arg_1.x >> (global1.c.a % 32u)) < ~1i, _wgslsmith_f_op_f32(ceil(-1287f)))).zy;
    global4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1089f - -2182f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.x + -754f), _wgslsmith_f_op_f32(sign(715f))))))));
    return Struct_3(Struct_2(global1.c), vec3<bool>(any(select(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global1.b.x, false), true), arg_0, arg_1.x == -19304i)), global2.b.x, arg_0.x), global1.a.a);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    global0 = vec2<bool>(!arg_1, false);
    global2 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(sign(global4.x));
    global3 = array<vec2<f32>, 11>();
    let var_1 = func_4(vec3<bool>(false, true, global0.x), vec3<i32>(-1i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.a, 61433i), ~vec3<i32>(-2147483647i, 0i, arg_3))), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -17300i)), vec2<bool>(false, false)).c;
    return func_4(!global2.b, countOneBits(-func_2(firstTrailingBit(vec4<u32>(23262u, 75908u, global2.c.a, u_input.d.x)), func_4(global2.b, vec3<i32>(arg_3, -2147483647i, u_input.c.x), global1.b.xx), Struct_4(Struct_2(Struct_1(global2.a.a.a)), true, -358f))), global1.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(vec3<bool>(global0.x, func_1(vec4<f32>(1000f, global4.x, 1971f, global4.x)), global2.b.x), vec3<i32>(2147483647i, 0i, u_input.a), global1.b.zz), all(global2.b), global2.a, func_2(countOneBits(vec4<u32>(reverseBits(0u), ~global2.c.a, ~global2.c.a, u_input.b)), func_4(global1.b, min(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c.x, 2147483647i), vec3<i32>(u_input.a, -1i, u_input.a)), func_2(vec4<u32>(u_input.d.x, global1.c.a, 0u, 0u), Struct_3(global2.a, global2.b, global1.a.a), Struct_4(global2.a, global0.x, 469f))), !global2.b.zx), Struct_4(Struct_2(global2.c), !any(vec3<bool>(global2.b.x, true, global2.b.x)), -1690f)).x);
    let var_0 = global2.b.x;
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(u_input.b));
    var var_3 = func_5(Struct_3(func_5(func_5(func_4(vec3<bool>(false, true, true), vec3<i32>(u_input.a, 2147483647i, u_input.a), global1.b.xz), func_4(vec3<bool>(global2.b.x, true, global1.b.x), vec3<i32>(53849i, 1i, u_input.a), global1.b.yy).b.x, func_4(global2.b, vec3<i32>(u_input.a, u_input.c.x, -33732i), vec2<bool>(global2.b.x, global0.x)).a, u_input.a), global0.x, func_4(func_5(Struct_3(Struct_2(global1.c), global2.b, Struct_1(4294967295u)), false, Struct_2(Struct_1(0u)), 48550i).b, vec3<i32>(u_input.a, u_input.a, 70289i), global2.b.yy).a, _wgslsmith_clamp_i32(-1i, ~55502i, u_input.a)).a, vec3<bool>(any(select(vec3<bool>(global1.b.x, global2.b.x, global0.x), global1.b, vec3<bool>(true, true, false))), true, global2.b.x), func_5(Struct_3(func_4(vec3<bool>(false, false, false), vec3<i32>(-2147483647i, u_input.a, u_input.c.x), global1.b.yy).a, global1.b, global1.a.a), !func_4(vec3<bool>(false, global0.x, global1.b.x), vec3<i32>(u_input.a, 0i, 3881i), global2.b.zx).b.x, func_5(Struct_3(Struct_2(Struct_1(1u)), global2.b, var_2.a), func_4(global1.b, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, true)).b.x, func_5(Struct_3(global1.a, vec3<bool>(true, false, true), Struct_1(global2.c.a)), global1.b.x, global1.a, 101527i).a, 44095i).a, u_input.c.x).a.a), !global1.b.x, Struct_2(Struct_1(~_wgslsmith_sub_u32(1u, global1.a.a.a))), u_input.a);
    var_3 = func_4(vec3<bool>(global1.b.x, !(u_input.c.x <= -15049i), global4.x >= 653f), -firstTrailingBit(vec3<i32>(u_input.c.x, -7516i | u_input.a, -u_input.c.x)), vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, -1102f, global4.x, global4.x))))), true));
    global4 = global3[_wgslsmith_index_u32(func_4(!select(vec3<bool>(global0.x, true && var_3.b.x, all(vec2<bool>(global1.b.x, global2.b.x))), var_3.b, true && any(vec3<bool>(global2.b.x, global0.x, global0.x))), vec3<i32>(-u_input.a, -(~(u_input.a & 16866i)), 32014i), global2.b.yx).c.a, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x))))), vec4<i32>(1i, min(-4698i, _wgslsmith_div_i32(29274i ^ u_input.c.x, -1i)), -func_2(vec4<u32>(1u, 0u, 27214u, global1.a.a.a), Struct_3(Struct_2(global1.a.a), vec3<bool>(true, true, global1.b.x), Struct_1(var_3.a.a.a)), Struct_4(Struct_2(var_2.a), global1.b.x, global4.x)).x >> (~4294967295u % 32u), ~max(-11524i, -u_input.a)));
}

