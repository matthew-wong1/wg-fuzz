struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 2> = array<u32, 2>(0u, 0u);

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = !global2.x;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-518f)), _wgslsmith_f_op_f32(110f - -111f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(413f * -672f)))), _wgslsmith_f_op_f32(f32(-1f) * -1581f), -683f), vec4<i32>(~(countOneBits(arg_2.x) << (~0u % 32u)), ~arg_1, countOneBits(~(~u_input.a.x)), -_wgslsmith_mod_i32(-2147483647i, -8913i)), -812f);
    global2 = !(!(!vec4<bool>(!var_0, 0u >= arg_3.x, any(global2.xzx), all(global2.zyy))));
    global2 = vec4<bool>(all(global2.zwz), _wgslsmith_f_op_f32(sign(1000f)) < var_1.a.x, var_0, any(select(select(!vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, var_0, false, var_0), !vec4<bool>(global2.x, true, false, true)), select(!vec4<bool>(false, var_0, global2.x, global2.x), select(vec4<bool>(var_0, false, false, false), vec4<bool>(true, false, var_0, global2.x), vec4<bool>(global2.x, true, false, false)), vec4<bool>(var_0, true, true, global2.x)), global2.x)));
    var var_2 = Struct_3(select(vec3<bool>(!all(vec4<bool>(true, false, false, global2.x)), !select(global2.x, global2.x, true), false), !select(global2.yyz, global2.xxz, var_0), global2.zyz), 19438u, true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c))) - 276f), var_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(521f, _wgslsmith_f_op_f32(trunc(var_1.a.x))))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_3, vec3<u32>(_wgslsmith_add_u32(4294967295u, ~global1[_wgslsmith_index_u32(51739u, 2u)]), 1u, global0.x)), ~select(_wgslsmith_sub_vec3_u32(arg_3, ~u_input.c.xzz), max(u_input.c.zwz, vec3<u32>(4294967295u, var_2.b, var_2.b)) ^ ~vec3<u32>(11747u, 27891u, global0.x), global2.x));
}

fn func_2() -> vec3<f32> {
    var var_0 = 755f;
    var var_1 = Struct_2((min(~u_input.c.x, 1u) | reverseBits(abs(global0.x))) >> (~_wgslsmith_sub_u32(~global0.x, _wgslsmith_div_u32(150u, u_input.b)) % 32u), vec2<u32>(~firstTrailingBit(global0.x), 7899u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, -1111f, -414f, 1880f))), -(~(~vec4<i32>(2147483647i, -14876i, -30871i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - -638f)));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(firstTrailingBit(-407i)) >> ((u_input.b | ~20698u) % 32u), var_1.c.b.x), var_1.c.b.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(var_1.c.a.wx - vec2<f32>(-1134f, _wgslsmith_div_f32(1998f, _wgslsmith_f_op_f32(2091f + var_1.c.a.x))));
    let var_4 = ~abs(~vec2<u32>(func_3(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], var_2.x, var_1.c.b.ww, u_input.c.www), ~0u));
    return var_1.c.a.zxw;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = !(!(!vec4<bool>(true, true, arg_1, arg_1)));
    var var_1 = vec3<u32>(u_input.c.x, u_input.b, 32597u & global0.x);
    let var_2 = vec3<bool>(!global2.x, !(!(!(arg_1 | false))), !arg_1 && arg_1);
    var var_3 = Struct_3(!vec3<bool>(!(!global2.x), any(var_0.xzx), true && (arg_0.c.c > -137f)), 4294967295u, !global2.x, _wgslsmith_f_op_vec3_f32(func_2()));
    let var_4 = vec3<bool>(!all(vec4<bool>(arg_1, all(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, global2.x, arg_1)), true)), any(select(var_2, select(var_0.wzz, !global2.yyx, !vec3<bool>(var_3.c, false, var_0.x)), true)), !((any(vec4<bool>(false, true, var_3.a.x, var_3.a.x)) & true) & any(!vec3<bool>(false, arg_1, var_3.a.x))));
    return arg_0.c.a.x;
}

fn func_4(arg_0: f32) -> Struct_2 {
    var var_0 = -540f > _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(max(-1000f, -707f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -232f, true))));
    let var_1 = select(vec3<bool>(true, any(!global2.yyx), true), global2.yzz, global2.ywz);
    global2 = vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(all(vec3<bool>(var_1.x, var_1.x, true)), var_1.x, global2.x, any(var_1.xy))), !(!any(global2.yw)), false | any(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)));
    let var_2 = Struct_2(24634u, vec2<u32>(28841u, ~_wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(global0.x, 2u)]) | _wgslsmith_dot_vec3_u32(u_input.c.zzy, _wgslsmith_add_vec3_u32(u_input.c.xww, u_input.c.wzw))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-522f, arg_0)), -1592f, _wgslsmith_f_op_f32(-arg_0), 373f)), -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(0i, -24924i, u_input.a.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 12067i), vec4<i32>(-17418i, 9316i, 45157i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))), 723f));
    var var_3 = ~u_input.b;
    return var_2;
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(843f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -231f))))))).c;
    global0 = u_input.c.xxw;
    let var_1 = 1u;
    let var_2 = 0i;
    global1 = array<u32, 2>();
    return all(!select(!select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, true, global2.x), global2.x), !vec4<bool>(global2.x, global2.x, false, global2.x), !any(global2.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec4<bool>(true | global2.x, !global2.x, func_5(func_4(_wgslsmith_f_op_f32(func_1(Struct_2(58588u, global0.yx, Struct_1(vec4<f32>(-808f, 763f, -421f, 109f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 3425i), 464f)), global2.x, vec4<i32>(-1i, -31533i, u_input.a.x, u_input.a.x), u_input.c.yxz)))), false);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2873f, -714f, -415f) - vec3<f32>(538f, 595f, -1000f)) - vec3<f32>(-1927f, 634f, 1000f)))));
    global1 = array<u32, 2>();
    let var_1 = _wgslsmith_f_op_f32(floor(var_0.x));
    var var_2 = Struct_2(u_input.b, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 2u)]), u_input.c.yx ^ vec2<u32>(1u, global0.x)), u_input.c.x), _wgslsmith_div_u32(~func_4(var_1).a, abs(~52092u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1422f, 173f, 586f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1227f, -1000f, var_0.x)), !vec4<bool>(true, global2.x, false, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1185f, -578f, -1107f)))), (select(vec4<i32>(0i, u_input.a.x, 29562i, -27887i), vec4<i32>(u_input.a.x, -2147483647i, 51800i, 1i), vec4<bool>(global2.x, global2.x, global2.x, false)) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)) << (~(u_input.c << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u, global0.x, 24835u) % vec4<u32>(32u))) % vec4<u32>(32u)), 852f));
    let var_3 = vec3<bool>(var_2.c.b.x > var_2.c.b.x, func_5(func_4(-1000f)), (var_2.b.x << (~(~1u) % 32u)) >= global0.x);
    var var_4 = vec4<bool>(func_5(Struct_2(reverseBits(0u), u_input.c.zz, func_4(var_2.c.a.x).c)) | false, global2.x, global2.x, (var_3.x && true) | true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(136f, var_2.c.a.x, _wgslsmith_f_op_f32(-676f + var_0.x)), vec4<i32>(u_input.a.x, var_2.c.b.x, u_input.a.x, var_2.c.b.x), vec4<i32>(-2147483647i, ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, 0i), 1i), ~u_input.a.x, u_input.a.x));
}

