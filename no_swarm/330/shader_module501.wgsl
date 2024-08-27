struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(738f, -1596f), vec2<f32>(127f, 452f), vec2<f32>(947f, -640f), vec2<f32>(-1129f, 215f), vec2<f32>(636f, 706f));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(20079u, 1u, 1u, 73904u), -24500i);

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(8768u, 4294967295u, 26219u, 33604u), -22946i);

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = 63561u;
    var var_1 = vec2<bool>(false, all(vec2<bool>(any(vec2<bool>(true, true)), true)));
    global4 = array<Struct_1, 22>();
    global3 = Struct_1(~(~reverseBits(vec4<u32>(66913u, 0u, global1.a.x, 499u) >> (global3.a % vec4<u32>(32u)))), reverseBits(0i & _wgslsmith_mult_i32(-1i, u_input.d.x ^ 61i)));
    global2 = ~(-1i & abs(~global1.b)) <= ~(-37331i);
    return ~_wgslsmith_div_vec2_u32(global3.a.yy, ~u_input.e);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> u32 {
    global2 = true;
    global4 = array<Struct_1, 22>();
    var var_0 = select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 76485u), func_3() >> (firstLeadingBit(vec2<u32>(13134u, global1.a.x)) % vec2<u32>(32u))), min(u_input.e, vec2<u32>(1u, 1u))), select(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global1.a.x, 1u), u_input.e | vec2<u32>(1u, 36857u)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 50578u)), global1.a.zy)), ~(abs(vec2<u32>(global3.a.x, global1.a.x)) ^ abs(vec2<u32>(global3.a.x, 4294967295u))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))), !(!any(vec3<bool>(true, true, true))));
    return func_3().x;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_u32(select(~(~(~vec2<u32>(global1.a.x, 0u))), abs(select(~global1.a.yx, func_3(), true)), arg_2), global3.a.xx);
    var var_1 = 1i;
    var var_2 = ~(~_wgslsmith_mult_vec4_u32((global1.a ^ global1.a) ^ ~global3.a, vec4<u32>(1u, 1u, ~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.e.x, global1.a.x), vec3<u32>(arg_3, 0u, 42259u)))));
    var var_3 = arg_0;
    global0 = array<vec2<f32>, 5>();
    return Struct_2(var_0.x);
}

fn func_1() -> f32 {
    var var_0 = func_4(0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2764f - -1330f), -481f)))), all(vec2<bool>(true, true)), _wgslsmith_div_u32(global1.a.x >> (~1u % 32u), (func_2(global1.b, Struct_2(u_input.a), -310f) | firstTrailingBit(1u)) >> (u_input.a % 32u)));
    var var_1 = Struct_2(select(12114u, ~func_2(i32(-1i) * -16789i, Struct_2(var_0.a), _wgslsmith_f_op_f32(round(-720f))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))));
    global2 = all(!(!vec2<bool>(true, any(vec2<bool>(true, true)))));
    var var_2 = vec4<bool>(all(!vec2<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(ceil(-2387f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-144f)), _wgslsmith_f_op_f32(round(-126f)))) - _wgslsmith_f_op_f32(select(-2587f, _wgslsmith_f_op_f32(f32(-1f) * -204f), false))), true, global1.b >= ~global3.b);
    var var_3 = var_2.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-535f, -1000f))), _wgslsmith_f_op_f32(ceil(-581f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 22>();
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), 190f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-428f - -1801f))))));
    var var_1 = Struct_1(global1.a, -41923i);
    global0 = array<vec2<f32>, 5>();
    var var_2 = func_4(_wgslsmith_clamp_u32(var_1.a.x, firstTrailingBit(firstTrailingBit(4294967295u)), _wgslsmith_dot_vec2_u32(global1.a.xy, ~global1.a.yz)) >> (u_input.e.x % 32u), _wgslsmith_f_op_f32(var_0.x + -739f), all(vec2<bool>(true, all(vec3<bool>(false, true, true)))), func_3().x);
    global2 = all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, 1i == var_1.b), vec2<bool>(true, true), true)));
    var var_3 = ~var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(~4294967295u, 5u)])));
}

