struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<Struct_2, 6>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-343f, -1000f, -280f, -1309f), vec4<f32>(-496f, 1931f, 511f, 2935f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -103f, -732f, -593f))))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-294f, -570f)))), _wgslsmith_f_op_f32(max(103f, 148f)))), _wgslsmith_f_op_f32(select(1f, -360f, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(452f, 118f))))));
    var var_1 = !(true && any(vec2<bool>(select(false, false, false), false)));
    var var_2 = -711f;
    let var_3 = Struct_2(any(!vec4<bool>(all(vec4<bool>(true, true, false, true)), false, true, false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(-466f, -1000f, -235f, -2598f)))))))), select(true, true, true), true);
    global1 = array<Struct_2, 6>();
    return global0[_wgslsmith_index_u32(0u, 10u)];
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<i32>(reverseBits(u_input.a.x), u_input.a.x, i32(-1i) * -16887i, func_3());
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 6u)];
    var_1 = Struct_2(!(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 92u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), 10u)] == _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, 1i, u_input.a.x, 1i), ~vec4<i32>(var_0.x, -54427i, -658i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-133f, var_1.b.x, 298f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, -770f, var_1.b.x, 2166f))), select(arg_0, var_1.c, var_1.c))) + vec4<f32>(var_1.b.x, _wgslsmith_div_f32(-499f, var_1.b.x), _wgslsmith_f_op_f32(step(2300f, 222f)), -1113f))), all(select(!vec2<bool>(var_1.c, var_1.d), !select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), !select(false, true, false))), false);
    var var_2 = Struct_1(vec3<f32>(var_1.b.x, -925f, _wgslsmith_f_op_f32(var_1.b.x + 1f)), _wgslsmith_mod_vec2_i32(u_input.a.zx, select(var_0.yx, -(~vec2<i32>(u_input.a.x, -18962i)), arg_0)), var_1.b.yw);
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~10970u, 215u, 24171u, ~(~u_input.b)), max(~vec4<u32>(u_input.b, 63496u, 30901u, 7943u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 70194u, u_input.b, u_input.b), vec4<u32>(8152u, 4294967295u, 2716u, u_input.b))) << (~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<u32>(47226u, ~(~u_input.b), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 0u, _wgslsmith_sub_u32(1u, u_input.b)), 90666u)) & ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 69417u, 4294967295u) ^ vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 121964u, 4294967295u)));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(step(var_2.a, var_2.a))), vec3<f32>(_wgslsmith_f_op_f32(step(var_2.a.x, var_2.c.x)), 349f, _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, 806f, 244f), vec3<f32>(-1205f, var_2.c.x, var_1.b.x)))) - vec3<f32>(-328f, var_1.b.x, _wgslsmith_f_op_f32(round(var_2.a.x))))), select(firstTrailingBit(var_2.b), reverseBits(max(var_0.xy, var_2.b)), any(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, var_1.c), var_1.a)) != true), _wgslsmith_f_op_vec2_f32(round(var_1.b.zz)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = false;
    let var_1 = func_2(true);
    var_0 = true;
    global0 = array<i32, 10>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.b, 6u)];
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_1 = func_2(var_0.a.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1005f, 101f)));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(0i, u_input.a.x, -1i, arg_1.b.x)), select(vec4<i32>(firstLeadingBit(arg_1.b.x), -18107i, -1i, -var_1.b.x), ~(vec4<i32>(var_0.b.x, var_1.b.x, -2147483647i, -1i) >> (vec4<u32>(u_input.b, 10562u, 0u, u_input.b) % vec4<u32>(32u))), ~arg_1.b.x < -1835i)), ~arg_1.b.x, firstTrailingBit(-1i), reverseBits(-44117i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(var_1.a.x, 2094f, arg_0.x)))))), vec2<i32>(-52750i, abs(-var_2.x)) << (~(~abs(vec2<u32>(u_input.b, 25928u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(-2625f, -1979f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -698f)))))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1016f, 974f, -626f)), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(122f, -204f))), Struct_1(vec3<f32>(-1447f, -2269f, 552f), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x), vec2<f32>(-2041f, -1148f)), _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, -1000f, -545f))))), -u_input.a.yx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(699f, -1419f), vec2<f32>(-592f, 1147f))) + _wgslsmith_div_vec2_f32(vec2<f32>(373f, 1408f), vec2<f32>(-2515f, -2153f)))))));
    var var_1 = Struct_2(false && !(u_input.a.x >= -34127i), vec4<f32>(-1413f, -1667f, func_4(_wgslsmith_f_op_vec3_f32(select(var_0.a, func_2(false).a, all(vec2<bool>(true, false)))), func_2(true)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), false, false);
    let var_2 = vec4<bool>(var_1.c, var_1.c, all(vec3<bool>(!(var_1.d || true), var_1.a, all(vec2<bool>(true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, 1i, var_0.b.x, func_3()), 243f);
}

