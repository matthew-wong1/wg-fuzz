struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec2<u32> = vec2<u32>(52088u, 0u);

var<private> global2: vec4<f32>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global4: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(u_input.c, _wgslsmith_mult_u32(global3.x, (countOneBits(u_input.b) & global1.x) & global0[_wgslsmith_index_u32(global3.x, 15u)]), ~arg_0.x);
    var var_1 = Struct_1(-2513f, !arg_1.a.b.b);
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(abs(_wgslsmith_mult_u32(global3.x >> (global0[_wgslsmith_index_u32(14315u, 15u)] % 32u), _wgslsmith_div_u32(4294967295u, 35532u)))), 0u, global1.x);
    var var_2 = arg_1.a;
    let var_3 = Struct_3(arg_1.a);
    return 1u;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-258f)), arg_2.b.b);
    var var_1 = var_0.b.x;
    var var_2 = Struct_1(1723f, !(!arg_2.b.b));
    let var_3 = arg_2.b;
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1447f + var_0.a)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), -1010f))), var_2.a);
    return vec3<bool>(var_3.b.x, any(var_3.b.zxw), all(var_3.b));
}

fn func_1() -> u32 {
    let var_0 = select(select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f * global2.x)), func_2(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], 1u, 1u, global1.x), Struct_3(Struct_2(vec3<f32>(-1216f, -1112f, -1153f), Struct_1(538f, vec4<bool>(true, true, false, true)), global2.zxz, u_input.d.x))) | _wgslsmith_div_u32(9922u, 24289u), Struct_2(_wgslsmith_f_op_vec3_f32(-global2.wwy), Struct_1(global2.x, vec4<bool>(false, false, false, false)), global2.yxw, abs(u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global2.yyx)), Struct_1(1011f, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(-global2.xyx), u_input.d.x)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_dot_vec2_u32(select(vec2<u32>(60880u, 0u), vec2<u32>(0u, 4294967295u), false), vec2<u32>(4294967295u, global1.x)), Struct_2(global2.xyx, Struct_1(global2.x, vec4<bool>(true, true, true, false)), _wgslsmith_div_vec3_f32(global2.zzx, vec3<f32>(590f, global2.x, 1200f)), u_input.a), Struct_2(_wgslsmith_f_op_vec3_f32(global2.xxz - global2.yzx), Struct_1(global2.x, vec4<bool>(false, false, false, true)), global2.yzw, -39498i)), (_wgslsmith_mult_i32(34309i, -9028i) << (_wgslsmith_add_u32(4294967295u, global1.x) % 32u)) > 1i), vec3<bool>(any(select(func_3(1350f, global3.x, Struct_2(global2.zxy, Struct_1(global2.x, vec4<bool>(true, true, false, true)), vec3<f32>(global2.x, 1617f, global2.x), u_input.a), Struct_2(global2.ywx, Struct_1(-721f, vec4<bool>(false, true, true, false)), vec3<f32>(143f, -1503f, global2.x), 2147483647i)).zx, vec2<bool>(true, true), vec2<bool>(true, true))), func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), 10514u, Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(-856f, global2.x, global2.x), true)), Struct_1(global2.x, vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2042f, global2.x, global2.x) * vec3<f32>(global2.x, global2.x, global2.x)), 14334i), Struct_2(vec3<f32>(-1613f, -1950f, -1000f), Struct_1(114f, vec4<bool>(false, true, true, true)), vec3<f32>(global2.x, 588f, 220f), u_input.a)).x, false != (select(true, false, true) && all(vec3<bool>(false, false, false)))), true);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, 797f, 140f, -146f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, 1386f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, global2.x, -629f, 1845f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -925f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2100f, global2.x, global2.x, global2.x))))));
    var var_2 = 22628u;
    var var_3 = 741f;
    var var_4 = var_1.wz;
    return abs(~(0u >> ((2807u >> (global0[_wgslsmith_index_u32(1u, 15u)] % 32u)) % 32u)) | ~global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(~firstLeadingBit(~(~2500u)), _wgslsmith_mult_u32(global1.x, ~(9520u >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(21425u, 15u)], global3.x) % 32u))));
    var var_0 = vec2<u32>(~abs(func_1()), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(47586u, 15u)]), vec2<u32>(u_input.c, global3.x)), vec2<u32>(select(0u | global1.x, ~1u, all(vec4<bool>(true, true, true, false))), global3.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-557f, _wgslsmith_f_op_f32(-628f - global2.x), 325f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.xxz + global2.wzz), global2.zzx, false)), vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global2.x)) + _wgslsmith_f_op_f32(trunc(179f))), !vec4<bool>(true, true, true, all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.yzx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.zzx))), global2.yyy, vec3<bool>(true, true, true))), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, -1i, u_input.d.x, u_input.a)), ~(~vec4<i32>(43465i, 63102i, 4309i, 1i))), ~(i32(-1i) * -18822i)));
    let var_2 = vec2<bool>(false, var_1.b.b.x & select(func_3(_wgslsmith_f_op_f32(ceil(897f)), ~global0[_wgslsmith_index_u32(4294967295u, 15u)], Struct_2(var_1.c, Struct_1(890f, var_1.b.b), global2.yzx, 2147483647i), Struct_2(var_1.c, Struct_1(121f, var_1.b.b), vec3<f32>(global2.x, global2.x, global2.x), -31578i)).x, var_1.b.b.x || true, var_1.b.b.x));
    let var_3 = ~(~select(vec4<u32>(global0[_wgslsmith_index_u32(~global3.x, 15u)], ~101341u, global1.x, var_0.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, global1.x, u_input.c, global3.x), vec4<u32>(96349u, global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0.x, 0u), vec4<u32>(var_0.x, global1.x, var_0.x, global3.x)), vec4<u32>(var_0.x, u_input.b, global1.x, 52691u) >> (vec4<u32>(1u, 0u, 1u, var_0.x) % vec4<u32>(32u)), vec4<u32>(29301u, global3.x, 0u, 51352u)), var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -510f))))), ~(u_input.d.xz | _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_1.d), u_input.d.xz, vec2<i32>(22121i, var_1.d)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 13122i), vec2<i32>(u_input.a, u_input.d.x)))));
}

