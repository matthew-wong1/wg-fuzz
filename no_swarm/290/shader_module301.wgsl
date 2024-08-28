struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 48832i;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(-8410i, 30739i, 0i, 1i)), Struct_1(vec4<i32>(20542i, i32(-2147483648), 2147483647i, 47165i)), Struct_1(vec4<i32>(1i, 2147483647i, 10793i, i32(-2147483648))), Struct_1(vec4<i32>(-1378i, 2147483647i, 0i, 0i)), Struct_1(vec4<i32>(2147483647i, 41721i, -1i, 2147483647i)), Struct_1(vec4<i32>(-24048i, 2147483647i, 1510i, -1i)), Struct_1(vec4<i32>(1i, -1i, -1i, 21825i)), Struct_1(vec4<i32>(32170i, -1i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(45250i, 7084i, i32(-2147483648), -25259i)));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.a.a.x, -2147483647i), 9676i | _wgslsmith_dot_vec2_i32(vec2<i32>(-25818i, 13132i), vec2<i32>(-1i, arg_0.a.a.x) | vec2<i32>(arg_3, arg_1.a.a.x)), global2.a.a.x) & (_wgslsmith_add_i32(u_input.b.x, u_input.b.x) & 0i);
    global1 = array<Struct_1, 9>();
    var var_1 = Struct_1(arg_1.a.a);
    global2 = arg_1;
    let var_2 = u_input.c;
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1235f, -295f), vec3<f32>(-487f, -1174f, -1585f)))))))));
    global0 = global2.a.a.x ^ 19973i;
    let var_1 = Struct_2(Struct_1(vec4<i32>(-abs(-47305i), func_3(Struct_2(global2.a), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, global2.a.a.x, 1i))), var_0.x, global2.a.a.x), arg_1, abs(u_input.b.x))));
    let var_2 = var_0.zy;
    global2 = var_1;
    return var_1.a.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~arg_0.x, 9u)]);
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    var_0 = arg_1;
    let var_1 = select(arg_0.x, 51988u, true);
    return abs(_wgslsmith_add_u32(22424u, ~u_input.c));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(1u, select(4294967295u, arg_2.x & u_input.c, any(!vec2<bool>(arg_1, arg_1))), ~(~(~4294967295u))), u_input.c);
    return _wgslsmith_sub_u32(reverseBits(~(~53041u >> (arg_2.x % 32u))), func_4(vec3<u32>(48213u, ~(~0u), u_input.c), Struct_2(Struct_1(func_2(4294967295u, global2.a.a.x, vec3<u32>(u_input.c, 35951u, u_input.c)))), -u_input.b.x, select(countOneBits(global2.a.a), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.a.x, 0i, arg_3.a.x, 23091i), vec4<i32>(arg_0.a.x, u_input.a.x, -29112i, -1i)), vec4<i32>(arg_3.a.x, -1i, u_input.b.x, -23718i)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(abs(firstLeadingBit(u_input.c) >> (func_1(global2.a, false, vec2<u32>(39608u, u_input.c), Struct_1(global2.a.a)) % 32u)), ~(~u_input.c)), ~(~(~_wgslsmith_div_u32(u_input.c, u_input.c))));
    let var_1 = (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1326u, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, 40124u) | vec4<u32>(u_input.c, 1u, var_0.x, 503u)) ^ abs((vec4<u32>(var_0.x, u_input.c, u_input.c, var_0.x) ^ vec4<u32>(5972u, 44762u, 5340u, 4294967295u)) | vec4<u32>(u_input.c, u_input.c, 32477u, 11848u))) << (select(firstTrailingBit(vec4<u32>(u_input.c, 20668u, 1478u, var_0.x)) & abs(vec4<u32>(u_input.c, 12976u, u_input.c, u_input.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.c, var_0.x), vec4<u32>(var_0.x, u_input.c, u_input.c, u_input.c)) ^ (~vec4<u32>(var_0.x, 27085u, var_0.x, 0u) & ~vec4<u32>(u_input.c, 1u, 1u, 5439u)), false) % vec4<u32>(32u));
    global2 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_div_i32(global2.a.a.x, global2.a.a.x) ^ func_2(9652u, -8440i, vec3<u32>(1u, var_0.x, 4294967295u)).x, -firstLeadingBit(-15825i), reverseBits(_wgslsmith_mod_i32(36840i, -1i)), -2147483647i)));
    var var_2 = global2.a;
    let var_3 = Struct_1(max(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(global2.a.a.xwx, ~vec3<i32>(-2147483647i, u_input.b.x, 34019i)), 2147483647i, -1i), vec4<i32>(~u_input.b.x, -_wgslsmith_sub_i32(28563i, var_2.a.x), -u_input.b.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, 71370i, var_3.a.x), var_2.a), vec4<i32>(global2.a.a.x, 2147483647i, 15734i, global2.a.a.x)) ^ _wgslsmith_clamp_i32(-51707i, global2.a.a.x, firstTrailingBit(15566i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -u_input.a.x), 17738i)));
}

