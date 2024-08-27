struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, false, false, true, true, false, false, true, true, true, true, false, true, true, true, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global0 = arg_2.c;
    let var_0 = arg_2.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(952f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1298f)), _wgslsmith_f_op_f32(arg_1.c.a.x - _wgslsmith_f_op_f32(-arg_1.b))), vec4<f32>(1604f, _wgslsmith_f_op_f32(-700f * arg_1.c.a.x), arg_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = ~u_input.b;
    return arg_0;
}

fn func_3() -> i32 {
    global0 = 1i;
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2575f * -1408f), _wgslsmith_f_op_f32(select(-1440f, 232f, global1[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_f32(max(-606f, 282f)))))) * vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-266f, -1430f)))), _wgslsmith_f_op_f32(min(625f, _wgslsmith_f_op_f32(1364f * -1098f)))), _wgslsmith_f_op_f32(f32(-1f) * -305f)));
    var var_2 = vec2<u32>(110716u, _wgslsmith_add_u32(select(10002u, ~_wgslsmith_sub_u32(4294967295u, 74723u), select(any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 9214u), 21u)], u_input.a != u_input.b)), 1u));
    global1 = array<bool, 21>();
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(32124u, 21u)];
    var var_1 = Struct_3(!(!global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(81285u, 8937u)), 21u)]), Struct_2(false, 632f, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -689f, -814f, 1000f))), Struct_2(true, _wgslsmith_f_op_f32(1204f - -369f), Struct_1(vec4<f32>(-702f, 572f, -916f, 877f))), Struct_3(false, Struct_2(false, -1664f, Struct_1(vec4<f32>(-928f, -813f, 698f, 1000f))), u_input.b >> (0u % 32u), max(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(96456u, 55257u, 5402u)), _wgslsmith_div_f32(439f, -691f)))), i32(-1i) * -56347i, ~(~(firstTrailingBit(vec3<u32>(1u, 40283u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), 762f);
    global0 = abs(min(func_3(), -45583i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(func_2(Struct_1(var_1.b.c.a), Struct_2(global1[_wgslsmith_index_u32(var_1.d.x, 21u)], var_1.b.c.a.x, Struct_1(vec4<f32>(var_1.b.b, -837f, var_1.e, -189f))), Struct_3(global1[_wgslsmith_index_u32(16389u, 21u)], Struct_2(true, var_1.b.c.a.x, var_1.b.c), 14613i, vec3<u32>(var_1.d.x, var_1.d.x, 1852u), var_1.e)).a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b + -1763f), _wgslsmith_f_op_f32(-1762f + var_1.e), -884f, _wgslsmith_f_op_f32(f32(-1f) * -855f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1370f, var_1.e, -153f, 626f)), vec4<f32>(412f, -126f, 278f, var_1.b.c.a.x), !var_1.b.a))), global1[_wgslsmith_index_u32(countOneBits(var_1.d.x), 21u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -226f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(408f + -806f)))));
    let var_2 = func_1();
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2.a))), _wgslsmith_f_op_vec4_f32(-var_2.a)));
    let var_4 = vec3<bool>(true, all(!select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(5855u, 21u)]), !global1[_wgslsmith_index_u32(11404u, 21u)])), true);
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(1518f + var_1), var_1, _wgslsmith_f_op_f32(-1000f * var_1), 859f), global1[_wgslsmith_index_u32(max(4294967295u, abs(0u)), 21u)])), var_2.a, select(!vec4<bool>(false, global1[_wgslsmith_index_u32(16014u, 21u)], var_4.x, true), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 21u)], var_4.x)), !(!global1[_wgslsmith_index_u32(0u, 21u)])))));
    let var_6 = _wgslsmith_f_op_f32(-var_2.a.x);
    let var_7 = vec2<i32>(19692i, u_input.b);
    var_0 = _wgslsmith_f_op_f32(-var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(38679u)));
}

