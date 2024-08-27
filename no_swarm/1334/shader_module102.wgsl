struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

var<private> global3: array<f32, 25>;

var<private> global4: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(u_input.c);
    var var_1 = vec4<u32>(4294967295u, abs(min(1u, firstTrailingBit(1u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, 51500u), max(92050u, 106171u), 1u), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 1u), u_input.b), 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(56662u, u_input.b, 29232u), vec3<u32>(u_input.b, u_input.b, u_input.b)), reverseBits(u_input.b << (1u % 32u)))), _wgslsmith_mod_u32(~(~max(0u, u_input.b)), _wgslsmith_mod_u32(1u | ~u_input.b, firstLeadingBit(u_input.b ^ u_input.b))));
    let var_2 = Struct_1(global2.x);
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    return var_1.yz & var_1.wx;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 1>();
    var var_0 = -u_input.a;
    let var_1 = arg_0;
    var var_2 = arg_1.a;
    let var_3 = 1i | arg_0.a;
    return 27051u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec2<i32> {
    let var_0 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(16326u, 77956u) ^ func_2(), arg_1.yw) << (func_3(Struct_1(1i), arg_0, abs(-u_input.c), arg_0) % 32u));
    return _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_2.xz) & (vec2<i32>(arg_2.x, arg_0.a) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), u_input.a.zx) >> (arg_1.yy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a.yw, abs(_wgslsmith_add_vec2_i32(arg_2.yw, vec2<i32>(arg_0.a, -1i)))), vec2<i32>(17958i, _wgslsmith_dot_vec3_i32(vec3<i32>(18748i, -1i, -2819i), arg_2.wzw) & -u_input.c), ~vec2<i32>(-13730i, _wgslsmith_add_i32(46436i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    var var_0 = true;
    let var_1 = ~(~countOneBits(abs(u_input.a))) ^ ~u_input.a;
    let var_2 = (func_1(Struct_1(countOneBits(-1i)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 17027u, u_input.b, 0u), vec4<u32>(u_input.b, 40590u, u_input.b, 38834u)) | ~vec4<u32>(u_input.b, u_input.b, 123599u, 4294967295u), _wgslsmith_add_vec4_i32(-u_input.a, -var_1)) & var_1.wz) << (~vec2<u32>(u_input.b, func_3(Struct_1(var_1.x), Struct_1(global2.x), -2147483647i << (u_input.b % 32u), Struct_1(0i))) % vec2<u32>(32u));
    global1 = Struct_1(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(_wgslsmith_mod_u32(15939u, 46663u), u_input.b)), ~vec4<u32>(12439u, _wgslsmith_div_u32(u_input.b & 4294967295u, firstTrailingBit(u_input.b)), 0u, ~(~6697u)), -28101i, u_input.b);
}

