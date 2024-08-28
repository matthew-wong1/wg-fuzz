struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, true, false, true), 4294967295u, Struct_2(vec3<i32>(16702i, -87277i, 27169i), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(select(firstTrailingBit(~min(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global0.c.a.x), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))), vec4<i32>(arg_0.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.c.x, u_input.a.x, -1i, 1i)), vec4<i32>(-2147483647i, 21087i, -52232i, 25680i)), 3606i, -global0.c.a.x), !global0.c.b), vec4<i32>(~abs(u_input.a.x), u_input.a.x, firstLeadingBit(arg_0.c.x) >> (select(3198u, 22739u, global0.c.b.x) % 32u), u_input.a.x) >> (min(~firstTrailingBit(vec4<u32>(u_input.b.x, 1u, 35450u, 42757u)), vec4<u32>(~4294967295u, ~arg_0.a, arg_0.a, ~u_input.b.x)) % vec4<u32>(32u)));
    global0 = Struct_3(select(!select(global0.c.b, !vec4<bool>(global0.d.x, true, global0.c.b.x, global0.a.x), any(global0.a.xzz)), vec4<bool>(true, true, false, !global0.d.x), global0.c.b), 1u, Struct_2(~min(global0.c.a, vec3<i32>(0i, 2147483647i, arg_0.c.x)) ^ vec3<i32>(2147483647i, var_0.x, min(arg_0.c.x, 14597i)), select(global0.c.b, select(!global0.d, !global0.c.b, vec4<bool>(true, global0.a.x, true, global0.c.b.x)), !global0.c.b.x)), !(!select(select(vec4<bool>(global0.c.b.x, false, global0.c.b.x, true), vec4<bool>(false, global0.c.b.x, true, global0.d.x), false), global0.c.b, global0.a.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(761f, 836f, arg_0.b.x, 629f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x) - vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))))));
    var var_2 = Struct_5(select(!(!global0.d.yzx), global0.c.b.wwx, !(!(!vec3<bool>(global0.d.x, true, false)))));
    let var_3 = -1i;
    return !(select(all(select(vec4<bool>(true, true, false, var_2.a.x), vec4<bool>(var_2.a.x, global0.a.x, false, var_2.a.x), vec4<bool>(true, true, global0.d.x, var_2.a.x))), all(global0.a), global0.c.b.x) == false);
}

fn func_2() -> i32 {
    global0 = Struct_3(select(vec4<bool>(true, false, false, true), select(!global0.c.b, select(!global0.c.b, !vec4<bool>(global0.a.x, global0.c.b.x, global0.d.x, false), all(global0.c.b.wxw)), global0.c.b.x), !vec4<bool>(global0.b >= u_input.b.x, !global0.c.b.x, !global0.c.b.x, true)), u_input.b.x, Struct_2(reverseBits(-(~u_input.a)), vec4<bool>(false, true, global0.a.x, !any(vec2<bool>(global0.d.x, global0.a.x)))), select(vec4<bool>(true, global0.c.b.x, !all(vec2<bool>(false, global0.a.x)), !global0.d.x), select(!select(global0.a, vec4<bool>(global0.c.b.x, true, true, false), global0.c.b), global0.c.b, all(vec2<bool>(global0.d.x, global0.d.x))), true));
    let var_0 = global0.d;
    global0 = Struct_3(vec4<bool>(global0.d.x, all(vec4<bool>(func_3(Struct_1(29133u, vec2<f32>(682f, 1000f), vec2<i32>(0i, -2147483647i))), global0.c.b.x, global0.a.x, 11009i <= u_input.a.x)), var_0.x, any(select(!vec2<bool>(global0.d.x, true), !vec2<bool>(global0.a.x, false), !vec2<bool>(var_0.x, var_0.x)))), 1u, Struct_2(~u_input.a & ~u_input.a, global0.c.b), !global0.a);
    let var_1 = ~u_input.b;
    let var_2 = !(!(false && any(vec2<bool>(global0.c.b.x, true))));
    return 2147483647i;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_3(vec4<bool>(false, all(global0.a), global0.d.x, all(vec3<bool>(any(global0.a.ww), false, all(global0.d)))), u_input.b.x, Struct_2(u_input.a, select(vec4<bool>(false, false, false, true), !global0.a, global0.c.b)), !(!global0.d));
    var var_0 = ~vec3<i32>(1i, 7579i, countOneBits(_wgslsmith_mod_i32(15123i, countOneBits(5806i))));
    var_0 = firstTrailingBit(vec3<i32>(func_2(), var_0.x, global0.c.a.x));
    let var_1 = Struct_3(!(!(!global0.a)), countOneBits(~1u), global0.c, vec4<bool>(true || (4294967295u < (u_input.b.x ^ global0.b)), !(!(arg_0.x | false)), true, arg_0.x));
    var var_2 = !select(global0.c.b, select(vec4<bool>(func_3(Struct_1(var_1.b, vec2<f32>(371f, 179f), u_input.a.xz)), any(vec3<bool>(false, true, var_1.c.b.x)), true, true), vec4<bool>(false, true, all(var_1.a.xx), !arg_0.x), var_1.d), any(vec3<bool>(u_input.a.x > global0.c.a.x, all(vec3<bool>(arg_0.x, var_1.a.x, false)), false)));
    return Struct_1(firstTrailingBit(48034u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-917f, _wgslsmith_div_f32(843f, 310f)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1996f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * 1607f))), vec2<i32>(global0.c.a.x, func_2()));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = reverseBits(u_input.a.x) ^ u_input.a.x;
    var var_1 = max(0u, ~93965u);
    let var_2 = arg_0;
    let var_3 = min(_wgslsmith_clamp_u32(43057u, u_input.b.x & 37988u, 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(3760u, u_input.b.x, global0.b), vec3<u32>(0u, arg_0.a, global0.b), global0.d.yxy), _wgslsmith_add_vec3_u32(vec3<u32>(59619u, 4441u, 4294967295u), vec3<u32>(39654u, global0.b, 0u))), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.b, 7054u), vec3<u32>(var_2.a, var_2.a, u_input.b.x), vec3<u32>(0u, arg_0.a, arg_0.a))))) | _wgslsmith_mod_u32(global0.b, 97434u);
    var_1 = arg_0.a >> (~firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b, var_3, 0u), ~vec3<u32>(var_2.a, 293u, u_input.b.x))) % 32u);
    return Struct_2(reverseBits(firstTrailingBit(vec3<i32>(u_input.a.x, -28816i, var_0)) << ((~vec3<u32>(global0.b, var_2.a, var_3) & (vec3<u32>(var_2.a, 8836u, 5377u) >> (vec3<u32>(var_2.a, 4889u, var_3) % vec3<u32>(32u)))) % vec3<u32>(32u))), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(!(!select(vec2<bool>(false, global0.a.x), global0.c.b.zz, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(ceil(-566f)), -1524f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2182f, 420f, 1294f, 534f) + vec4<f32>(-1328f, 609f, 563f, -690f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, 286f, -331f, 1043f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1036f, 897f, -1434f, 551f), vec4<f32>(-405f, 1062f, 1116f, 1683f)))))));
    let var_2 = select(vec3<bool>(global0.c.b.x, true, false), vec3<bool>(!(!var_0.b.x || true), true, (any(vec3<bool>(true, false, true)) || true) == (global0.a.x | var_0.b.x)), vec3<bool>(true, global0.a.x, global0.d.x));
    let var_3 = Struct_2(vec3<i32>(func_1(!(!var_2.xx)).c.x, global0.c.a.x, ~(_wgslsmith_div_i32(1i, global0.c.a.x) | u_input.a.x)), vec4<bool>(var_2.x, func_3(Struct_1(u_input.b.x, var_1.a.zy, vec2<i32>(-1i, 12761i))) || all(vec4<bool>(global0.d.x, var_2.x, var_0.b.x, true)), false, func_3(func_1(vec2<bool>(var_2.x, var_0.b.x)))));
    global0 = Struct_3(!select(!var_0.b, global0.c.b, vec4<bool>(var_3.b.x, all(vec4<bool>(false, var_0.b.x, true, var_0.b.x)), any(vec3<bool>(true, var_0.b.x, var_2.x)), false)), _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(firstTrailingBit(5912u)), ~u_input.b.x), max(~select(5339u, u_input.b.x, var_0.b.x), u_input.b.x)), Struct_2(var_0.a, !func_4(func_1(vec2<bool>(true, true))).b), var_3.b);
    global0 = Struct_3(vec4<bool>((false || any(global0.a.zx)) != (true && all(var_3.b)), true, true, var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, reverseBits(_wgslsmith_clamp_u32(7794u, global0.b, global0.b)), firstTrailingBit(~1u), abs(1u)), ~vec4<u32>(29120u, 20980u, 0u, u_input.b.x) ^ (countOneBits(vec4<u32>(64334u, global0.b, 77373u, u_input.b.x)) | ~vec4<u32>(35933u, 87585u, 1u, 49211u))), global0.c, !var_3.b);
    var var_4 = Struct_4(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1346f, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, u_input.a.x) & vec4<i32>(2147483647i, 0i, var_0.a.x, var_0.a.x), vec4<i32>(_wgslsmith_sub_i32(-1i, 1i), 30722i, _wgslsmith_add_i32(u_input.a.x, -34831i), 1i)), i32(-1i) * -1i), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x & 0i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, u_input.a.x), reverseBits(var_0.a.x)), global0.c.a.x), u_input.a), ~81943u);
}

