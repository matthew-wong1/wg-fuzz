struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2135f), _wgslsmith_f_op_f32(select(318f, -996f, true)), 891f, _wgslsmith_f_op_f32(select(-1264f, 1864f, false)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 751f, global1.x, -838f))))))));
    global0 = array<u32, 4>();
    var var_0 = Struct_2(Struct_1(reverseBits(vec3<i32>(-1i, 31591i << (u_input.a.x % 32u), 0i << (global0[_wgslsmith_index_u32(u_input.b.x, 4u)] % 32u)))), u_input.a, vec4<bool>(!all(vec3<bool>(false, false, false)), true, (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], 4u)] == 66229u) && true, !((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67233u, 4u)], 4u)] < global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) == true)));
    let var_1 = vec3<bool>(true, true, false);
    var var_2 = var_0.a;
    return vec4<bool>(var_0.c.x, any(!var_0.c) & (var_1.x & var_1.x), (var_0.a.a.x | max(var_2.a.x, -var_0.a.a.x)) >= firstLeadingBit(select(-1i, var_0.a.a.x, any(vec2<bool>(var_0.c.x, true)))), true);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(all(func_3()), false, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), all(vec4<bool>(false, true, false, false)))), any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)))));
    let var_1 = countOneBits(~firstLeadingBit(vec2<u32>(select(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x, false), u_input.b.x)));
    global1 = vec4<f32>(302f, 1666f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1403f))))), global1.x);
    var var_2 = Struct_3(Struct_1(vec3<i32>(~_wgslsmith_sub_i32(1i, -32742i), _wgslsmith_mult_i32(0i, 1i), 0i)), Struct_2(Struct_1(vec3<i32>(1i, 1i, 1i)), ~abs(u_input.a), vec4<bool>(any(select(vec4<bool>(var_0, true, false, true), vec4<bool>(var_0, var_0, true, true), var_0)), var_0, false | all(vec3<bool>(false, false, true)), var_0)));
    let var_3 = -_wgslsmith_mult_i32(-67541i, abs(1i));
    return var_2.a;
}

fn func_1() -> i32 {
    global0 = array<u32, 4>();
    var var_0 = Struct_2(func_2(_wgslsmith_sub_u32(~(~7339u), ~(~u_input.a.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~u_input.b.x, max(26841u, u_input.b.x), _wgslsmith_div_u32(456u, u_input.a.x)), vec4<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(7992u, 4u)]), _wgslsmith_div_u32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), _wgslsmith_div_u32(u_input.b.x, 4294967295u), 44010u), ~(~u_input.a)), u_input.a), select(vec4<bool>(true, _wgslsmith_f_op_f32(global1.x - global1.x) == _wgslsmith_f_op_f32(global1.x + global1.x), true, true), select(vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, false))), !func_3(), false)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(trunc(global1.x)));
    var_0 = Struct_2(var_0.a, vec4<u32>(reverseBits(1u), 1u, _wgslsmith_dot_vec3_u32(var_0.b.yxx, select(var_0.b.zzz, vec3<u32>(56956u, var_0.b.x, u_input.a.x), false)), firstLeadingBit(_wgslsmith_mod_u32(22892u, reverseBits(u_input.a.x)))), !(!select(select(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c, var_0.c), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1000f) + _wgslsmith_f_op_f32(step(global1.x, -1000f))), global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1109f, -302f, -1204f) - vec4<f32>(136f, -2245f, -625f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 486f, global1.x, global1.x)))));
    return 0i << (_wgslsmith_add_u32(reverseBits(abs(112018u << (var_0.b.x % 32u))), firstTrailingBit(var_0.b.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<i32>(54237i, ~(i32(-1i) * -1i), ~(~(-9070i)))), u_input.a, !vec4<bool>(func_1() > max(31416i, 15605i), true, true, true));
    var var_1 = Struct_3(var_0.a, Struct_2(var_0.a, vec4<u32>(u_input.b.x, _wgslsmith_add_u32(532u, 80648u), global0[_wgslsmith_index_u32(0u, 4u)], 4294967295u ^ global0[_wgslsmith_index_u32(12935u, 4u)]) >> (var_0.b % vec4<u32>(32u)), var_0.c));
    var var_2 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-var_0.a.a.x, firstLeadingBit(0i)) | -(var_1.a.a.zx << (var_1.b.b.zw % vec2<u32>(32u)))), var_1.a.a.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(35307u, abs(var_1.b.b.x) >> (select(global0[_wgslsmith_index_u32(17019u, 4u)], 4903u, true) % 32u))), _wgslsmith_div_f32(global1.x, -2054f), ~vec4<u32>(select(global0[_wgslsmith_index_u32(0u, 4u)], 21541u, var_1.b.c.x), 58378u, ~4294967295u, 34406u | var_1.b.b.x) & ~vec4<u32>(var_1.b.b.x, ~50785u, var_1.b.b.x, u_input.a.x), _wgslsmith_f_op_f32(-1000f - 1287f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-281f, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(global1.x * 1417f), var_0.c.x)), global1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xww) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.zzx, vec3<f32>(-769f, global1.x, global1.x))), global1.yxx))));
}

