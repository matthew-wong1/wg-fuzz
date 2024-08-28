struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    global0 = array<u32, 12>();
    let var_0 = select(u_input.a, select(countOneBits(arg_1.x), u_input.b, arg_0.a.d), any(vec2<bool>(u_input.e <= _wgslsmith_mult_i32(-1i, -15369i), arg_0.c.d)));
    global1 = array<vec3<i32>, 12>();
    let var_1 = vec2<bool>(arg_0.c.d, !(!(_wgslsmith_mult_i32(-2147483647i, arg_0.a.b.x) == -var_0)));
    let var_2 = global0[_wgslsmith_index_u32(44588u, 12u)];
    return -(i32(-1i) * -arg_1.x);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = any(vec4<bool>(true, (-16642i >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], 12u)], 1u) % 32u)) <= func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], vec4<i32>(arg_0.x, -2147483647i, arg_0.x, u_input.e), global0[_wgslsmith_index_u32(u_input.c, 12u)], false), Struct_1(u_input.c, vec4<i32>(-24949i, arg_0.x, arg_0.x, -12965i), u_input.c, false), Struct_1(global0[_wgslsmith_index_u32(1u, 12u)], vec4<i32>(arg_0.x, arg_0.x, -2147483647i, 0i), u_input.c, true), arg_0.yy, vec2<u32>(23892u, 21163u)), global1[_wgslsmith_index_u32(49545u, 12u)]), true, -abs(arg_0.x) == (-2147483647i ^ u_input.a)));
    let var_1 = _wgslsmith_div_i32(~(-2147483647i), -1i);
    var var_2 = Struct_2(Struct_1(0u, max(abs(countOneBits(vec4<i32>(3414i, 18281i, -1i, var_1))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, 2147483647i, 20152i, u_input.a), vec4<i32>(37608i, u_input.e, 2147483647i, 45336i))), u_input.d.x, any(vec2<bool>(var_0, true))), Struct_1(countOneBits(~51792u | reverseBits(global0[_wgslsmith_index_u32(0u, 12u)])), min(~(~vec4<i32>(arg_0.x, -1i, var_1, var_1)), vec4<i32>(_wgslsmith_mod_i32(arg_0.x, u_input.e), -u_input.b, 6595i >> (u_input.d.x % 32u), abs(-12063i))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(95857u, 12u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 44691u, 0u, 18u), vec4<bool>(true, true, true, false)) | countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], u_input.c, global0[_wgslsmith_index_u32(u_input.c, 12u)], 42325u)), _wgslsmith_mod_vec4_u32(vec4<u32>(50730u, 50990u, u_input.c, 0u) >> (vec4<u32>(u_input.c, u_input.d.x, global0[_wgslsmith_index_u32(13430u, 12u)], 18514u) % vec4<u32>(32u)), ~vec4<u32>(32215u, u_input.d.x, u_input.d.x, 0u))), true), Struct_1(~50763u, vec4<i32>(_wgslsmith_mod_i32(u_input.e, abs(u_input.b)), _wgslsmith_add_i32(var_1, var_1 & -49146i), ~_wgslsmith_add_i32(1i, u_input.b), firstLeadingBit(u_input.b)), ~u_input.c, var_0), arg_0.zy, vec2<u32>(42036u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global0[_wgslsmith_index_u32(25943u, 12u)]), vec2<u32>(global0[_wgslsmith_index_u32(10854u, 12u)], 3954u))) | _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(52583u, u_input.c), _wgslsmith_div_vec2_u32(u_input.d.zz, u_input.d.zx)), abs(select(u_input.d.zz, u_input.d.yy, var_0))));
    var var_3 = Struct_2(Struct_1(~firstLeadingBit(firstTrailingBit(var_2.b.c)), vec4<i32>(_wgslsmith_add_i32(0i, var_2.c.b.x) >> (_wgslsmith_mult_u32(var_2.a.c, u_input.c) % 32u), -firstTrailingBit(u_input.e), _wgslsmith_mod_i32(var_2.c.b.x, _wgslsmith_mod_i32(1i, 1640i)), -16696i << (firstLeadingBit(u_input.c) % 32u)), (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31318u, 12u)] & var_2.b.a, 12u)] >> (~4294967295u % 32u)) << (u_input.d.x % 32u), !(all(vec4<bool>(false, true, true, var_0)) | false)), var_2.b, var_2.b, select(vec2<i32>(-1i) * -abs(arg_0.zx), var_2.c.b.yx, true), var_2.e);
    let var_4 = Struct_2(var_3.b, var_3.a, var_3.b, select(arg_0.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(arg_0.x), -arg_0.x), vec2<i32>(arg_0.x, firstTrailingBit(u_input.a)), min(_wgslsmith_sub_vec2_i32(arg_0.yy, var_3.c.b.yy), arg_0.zz | arg_0.xy)), vec2<bool>(var_0, any(!vec4<bool>(var_3.b.d, false, true, var_0)))), countOneBits(vec2<u32>(33487u, abs(select(u_input.c, 4294967295u, var_3.a.d)))));
    return -2147483647i;
}

fn func_1() -> StorageBuffer {
    global0 = array<u32, 12>();
    var var_0 = ~u_input.c;
    let var_1 = Struct_1(~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 4294967295u)))), vec4<i32>(-1i) * -vec4<i32>(func_2(vec3<i32>(35697i, u_input.b, 2147483647i)), _wgslsmith_sub_i32(u_input.b, 2147483647i), u_input.a, u_input.b), u_input.c, (~u_input.b > ~(-15812i)) && true);
    global0 = array<u32, 12>();
    global1 = array<vec3<i32>, 12>();
    return StorageBuffer(global0[_wgslsmith_index_u32(~(~0u) | countOneBits(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)], 12u)])), 12u)] & _wgslsmith_div_u32(_wgslsmith_mult_u32(20319u, u_input.d.x & 44027u), global0[_wgslsmith_index_u32(~var_1.c ^ var_1.c, 12u)]), 15307u, vec4<u32>(u_input.c, ~(~var_1.a), 1u, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(107435u, 12u)], ~4294967295u, ~u_input.d.x, _wgslsmith_mult_u32(88708u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 49493u, 51181u, 10468u), vec4<u32>(4294967295u, var_1.c, var_1.c, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

