struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global2: Struct_1 = Struct_1(false);

var<private> global3: array<i32, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(arg_0, 1u), 1u, 4294967295u, 27730u >> (arg_0 % 32u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 87248u, arg_0, 0u), vec4<u32>(arg_0, 1u, 42829u, 1u)) >> (~vec4<u32>(arg_0, 93453u, arg_0, 51498u) % vec4<u32>(32u)))), Struct_1(!all(arg_2.xz)));
    let var_1 = var_0;
    return all(vec2<bool>(true, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(!arg_0.x);
    var var_1 = global1[_wgslsmith_index_u32(arg_1.x, 21u)];
    global2 = global1[_wgslsmith_index_u32(~(~arg_1.x), 21u)];
    let var_2 = Struct_1(!var_0.a);
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    return Struct_1(func_4(vec4<bool>(!global2.a, global2.a, func_3(98495u, arg_0.x, vec3<bool>(global2.a, false, false)), func_3(4294967295u, 862f, vec3<bool>(true, global2.a, true))), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), true && global2.a)) & all(vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = 2147483647i;
    var var_2 = -vec4<i32>(u_input.a.x, -abs(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_2.a, 8u)], global3[_wgslsmith_index_u32(2942u, 8u)])), ~countOneBits(u_input.a.x), firstTrailingBit(max(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(73922u, 8u)], -1i), global3[_wgslsmith_index_u32(0u, 8u)])));
    var var_3 = arg_2;
    let var_4 = arg_2.a;
    return var_0.b;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = !(global3[_wgslsmith_index_u32(~(~0u), 8u)] == global3[_wgslsmith_index_u32(0u, 8u)]);
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(407f, 770f))), _wgslsmith_f_op_f32(-1067f + _wgslsmith_f_op_f32(395f * -1235f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) - _wgslsmith_f_op_f32(f32(-1f) * -389f)) * _wgslsmith_f_op_f32(729f - 1f)), func_5(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -1323f, 1993f, -585f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -468f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1085f, -248f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f + -658f) + -441f)), Struct_2(firstLeadingBit(127155u), global1[_wgslsmith_index_u32(max(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(84998u, 0u), vec2<u32>(10417u, 52865u))), 21u)])), true));
    let var_1 = _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1u, 8u)], -2004i) ^ reverseBits(~(-abs(-1i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -267f)) * _wgslsmith_f_op_f32(-1690f * 614f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 526f) * _wgslsmith_f_op_f32(f32(-1f) * -1631f)) - 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(646f, 1953f, -621f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(907f, -1000f, -1439f), vec3<f32>(1374f, -1887f, 779f), vec3<bool>(global2.a, global2.a, true)))))));
    let var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(max(1648f, var_2.x)), var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_2.x));
    var_0 = var_2.x;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(874f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f - -1000f) + -958f))), -568f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-204f, 344f)) * _wgslsmith_f_op_f32(round(-137f))))))));
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 57250u, 54498u), vec3<u32>(1u, 1u, 1u)), ~(_wgslsmith_mod_u32(4294967295u, 4294967295u) << (1u % 32u)), ~1u, max(25734u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(31353u, 1u), vec2<u32>(7055u, 1u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1f, var_0.x, var_0.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(-1000f * var_0.x), var_0.x, var_0.x)));
    global1 = array<Struct_1, 21>();
    var var_3 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(111f))));
}

