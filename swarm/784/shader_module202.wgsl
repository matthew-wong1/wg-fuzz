struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec2<i32>, 21>;

var<private> global4: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-23173i, -27891i, 0i), vec3<i32>(1i, -1i, 71391i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(13971i, i32(-2147483648), 2147483647i), vec3<i32>(-18139i, -1i, -39271i), vec3<i32>(53504i, 27967i, 54057i), vec3<i32>(34606i, 2147483647i, 0i), vec3<i32>(2147483647i, 22484i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 682i), vec3<i32>(-8961i, -1i, -25447i), vec3<i32>(-20308i, -44101i, 80472i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-36488i, i32(-2147483648), -1i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(2147483647i, 2707i, -27362i), vec3<i32>(-9001i, 0i, 2147483647i), vec3<i32>(0i, -14231i, 2147483647i), vec3<i32>(0i, 21402i, 26585i), vec3<i32>(i32(-2147483648), -12890i, 30902i), vec3<i32>(1i, -1i, 45623i), vec3<i32>(-31371i, -10222i, 1609i), vec3<i32>(-30632i, i32(-2147483648), 2147483647i), vec3<i32>(-7168i, 27160i, 0i), vec3<i32>(-19499i, -865i, -11822i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = global1.x;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(441f, global1.x, false)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))) * -332f), (_wgslsmith_mod_u32(49722u, 30333u) & global2.x) != 72527u)));
    var var_2 = arg_0;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 1120f)));
    var var_4 = Struct_5(~vec3<u32>(1u, _wgslsmith_mod_u32(~global2.x, firstLeadingBit(5093u)), global2.x));
    return all(!(!vec3<bool>(true, false, any(vec2<bool>(true, false)))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~(~(_wgslsmith_mod_u32(u_input.d, global2.x) | ~global2.x)));
    return Struct_1(firstTrailingBit(firstLeadingBit(~firstLeadingBit(vec4<u32>(u_input.d, 1u, var_0, u_input.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(244f, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, global1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1099f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, global1.x, global1.x)), all(vec4<bool>(false, false, false, true)))))), _wgslsmith_sub_i32(45991i, u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = vec2<u32>(1u, 0u);
    var var_1 = u_input.b.yy;
    var_1 = reverseBits(_wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(4294967295u, 1u)) & (countOneBits(vec2<u32>(101568u, 0u)) | arg_0.a.ww), var_0));
    let var_2 = 1u;
    var var_3 = vec3<i32>(abs(-abs(0i)) >> (u_input.b.x % 32u), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global4[_wgslsmith_index_u32(1u, 25u)] >> (vec3<u32>(1u, var_1.x, 77552u) % vec3<u32>(32u)), -global4[_wgslsmith_index_u32(var_2, 25u)]), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, 73457i, 66711i), vec4<i32>(30466i, 0i, arg_0.c, arg_0.c)), arg_0.c, -arg_0.c)), ~0i);
    return ~63489u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(true && func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2084f, global1.x, 291f)))), func_3(func_2(), _wgslsmith_f_op_f32(-global1.x), Struct_3(true)) > 4294967295u, select(true, !(!func_1(vec3<f32>(global1.x, 681f, global1.x))), true));
    var var_1 = var_0.x;
    var_1 = all(!vec4<bool>((false | var_0.x) || (global2.x >= 22194u), true, false, (-20419i & u_input.c.x) <= firstTrailingBit(u_input.c.x)));
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -161f, -687f), vec3<f32>(_wgslsmith_div_f32(-185f, 796f), 1000f, -943f), any(vec2<bool>(var_0.x, var_0.x)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(810f, -1814f, func_2().b.x, 246f)))));
    let var_3 = !select(var_0.xy, select(select(select(vec2<bool>(false, false), var_0.xz, true), var_0.xy, all(var_0.zz)), !select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), var_0.x), vec2<bool>(true, any(var_0.yx))), select(select(var_0.xx, var_0.yy, var_0.x), vec2<bool>(select(false, var_0.x, true), true), var_0.x));
    let var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~(~global2.x)), firstTrailingBit(_wgslsmith_mult_u32(22688u, _wgslsmith_sub_u32(37545u, 1u)))), vec2<u32>(1864u, firstTrailingBit(_wgslsmith_mod_u32(func_2().a.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-10791i), u_input.b.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -814f)), _wgslsmith_f_op_vec2_f32(var_2.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -672f))))), global1.yz, !(!var_3.x && true))), -2147483647i);
}

