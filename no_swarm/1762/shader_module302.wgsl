struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<i32>(22661i, 35717i))), Struct_2(Struct_1(vec2<i32>(27226i, -5509i))), Struct_2(Struct_1(vec2<i32>(-47866i, 15808i))), Struct_2(Struct_1(vec2<i32>(-36835i, 2147483647i))), Struct_2(Struct_1(vec2<i32>(57396i, -357i))), Struct_2(Struct_1(vec2<i32>(-3447i, 2147483647i))), Struct_2(Struct_1(vec2<i32>(1661i, -1i))), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i))), Struct_2(Struct_1(vec2<i32>(-1i, -23296i))), Struct_2(Struct_1(vec2<i32>(1i, -11329i))), Struct_2(Struct_1(vec2<i32>(-10127i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i))), Struct_2(Struct_1(vec2<i32>(-53648i, 0i))), Struct_2(Struct_1(vec2<i32>(37920i, 1i))), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)))));

var<private> global1: bool = true;

var<private> global2: array<u32, 8>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(1i, 5828i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(i32(-2147483648), -14672i)), Struct_1(vec2<i32>(24887i, 10874i)), Struct_1(vec2<i32>(2147483647i, -69665i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(-12831i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 15907i)), Struct_1(vec2<i32>(-1i, -43525i)), Struct_1(vec2<i32>(-20358i, 1i)), Struct_1(vec2<i32>(-22453i, -7012i)), Struct_1(vec2<i32>(-1i, 36205i)), Struct_1(vec2<i32>(-7696i, 0i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(1i, -2366i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(-58118i, -25337i)), Struct_1(vec2<i32>(i32(-2147483648), 79392i)), Struct_1(vec2<i32>(33197i, 0i)), Struct_1(vec2<i32>(10048i, 38613i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-7562i, -2047i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = countOneBits(_wgslsmith_div_vec2_u32((firstTrailingBit(vec2<u32>(28032u, 0u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & ~vec2<u32>(10346u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(52642u), global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(0u, 8u)]), 8u)]), _wgslsmith_div_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(26745u, 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22873u, 8u)], 8u)], 4294967295u)) ^ (vec2<u32>(global2[_wgslsmith_index_u32(62716u, 8u)], 4294967295u) << (vec2<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 1u) % vec2<u32>(32u))))));
    global1 = select(abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], var_0.x, var_0.x, var_0.x), vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)], var_0.x, 0u)), countOneBits(4294967295u))), ~max(_wgslsmith_mult_u32(4843u, global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_mult_u32(var_0.x, 1u)), true) < (~abs(reverseBits(68450u)) & global2[_wgslsmith_index_u32(1u, 8u)]);
    var var_1 = Struct_2(arg_0);
    var_1 = global0[_wgslsmith_index_u32(min(var_0.x, ~(var_0.x & min(~global2[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 8u)], var_0.x)))), 16u)];
    var var_2 = _wgslsmith_f_op_f32(min(-243f, -194f));
    return vec4<bool>(true, true, false, true);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    global1 = !(53218u > ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 8u)], 8u)] >> (~30227u % 32u)));
    var var_0 = select(!select(func_3(Struct_1(u_input.b)), func_3(Struct_1(arg_1.a)), any(vec2<bool>(false, true))), vec4<bool>(all(!vec2<bool>(true, arg_2)), arg_2, arg_2, true & arg_2), false);
    global1 = !(!arg_2);
    var var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(~1i, ~(-1i), abs(arg_1.a.x))) << (_wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(0u, 8u)], arg_0, 15466u), vec4<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], arg_0)), vec4<u32>(arg_0, global2[_wgslsmith_index_u32(6186u, 8u)], arg_0, global2[_wgslsmith_index_u32(arg_0, 8u)])), abs(vec4<u32>(arg_3, 109119u, arg_0, 78452u))) % 32u), arg_1.a.x, -u_input.c);
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_3 & 17804u, _wgslsmith_dot_vec4_u32(vec4<u32>(7400u, 4294967295u, arg_0, global2[_wgslsmith_index_u32(arg_0, 8u)]), vec4<u32>(arg_0, arg_3, arg_3, 30907u))), 4294967295u, 1u) << (_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(arg_3, arg_3, 9622u, 41890u)), min(vec4<u32>(arg_0, arg_0, global2[_wgslsmith_index_u32(arg_3, 8u)], 0u), vec4<u32>(arg_3, arg_0, 1u, 1u)) & ~vec4<u32>(16039u, 92259u, global2[_wgslsmith_index_u32(arg_3, 8u)], 4294967295u)) % vec4<u32>(32u)), vec4<u32>(arg_3, ~4294967295u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_0, 8u)], arg_0), firstTrailingBit(global2[_wgslsmith_index_u32(arg_0, 8u)]))), abs(17606u)), (~_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(arg_0, 8u)], 80052u, 1u, arg_0), vec4<u32>(34079u, arg_3, global2[_wgslsmith_index_u32(16610u, 8u)], 4294967295u)) | vec4<u32>(~global2[_wgslsmith_index_u32(arg_0, 8u)], abs(59395u), arg_0 & arg_0, 1u)) ^ vec4<u32>(69470u, reverseBits(_wgslsmith_add_u32(0u, arg_3)), _wgslsmith_add_u32(max(1u, global2[_wgslsmith_index_u32(0u, 8u)]), arg_3), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(arg_3, 8u)], arg_3, 1u, 4294967295u)), vec4<u32>(arg_3, arg_3, arg_3, arg_3) >> (vec4<u32>(31390u, 81908u, arg_3, arg_0) % vec4<u32>(32u)))));
    return Struct_1(_wgslsmith_div_vec2_i32(~u_input.b, var_1.yy));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global2 = array<u32, 8>();
    global3 = array<Struct_1, 23>();
    let var_0 = vec4<bool>(false, true, all(!func_3(Struct_1(u_input.b))), any(!vec3<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, true)), true)));
    let var_1 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 23u)];
    var var_2 = min(min(vec3<i32>(~u_input.a, arg_2.a.x, -34244i), min(select(vec3<i32>(u_input.a, 5877i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(662i, var_1.a.x, -45226i), vec3<i32>(var_1.a.x, var_1.a.x, arg_2.a.x)), vec3<bool>(var_0.x, true, var_0.x)), countOneBits(max(vec3<i32>(arg_2.a.x, -66844i, u_input.b.x), vec3<i32>(arg_2.a.x, u_input.c, 0i))))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 22209i, var_1.a.x), vec3<i32>(var_1.a.x, arg_2.a.x, 0i)) | ~vec3<i32>(62426i, 1i, -59215i), vec3<i32>(arg_2.a.x, u_input.c << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55643u, 8u)], 8u)], 8u)], 8u)], 8u)] % 32u), u_input.a)), vec3<i32>(var_1.a.x, _wgslsmith_mult_i32(arg_2.a.x, abs(u_input.b.x)), var_1.a.x)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15232u, 8u)], 8u)]), 44809u)), 18807u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17879u, 8u)], 8u)] ^ 4294967295u, 8u)] >> (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22691u, 8u)], 8u)] % 32u), 8u)], reverseBits(global2[_wgslsmith_index_u32(0u, 8u)]), ~max(global2[_wgslsmith_index_u32(~3575u, 8u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 8u)], 8u)])), ~(~(~(vec4<u32>(25211u, 0u, global2[_wgslsmith_index_u32(49419u, 8u)], 79516u) & vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], 4294967295u)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = vec3<u32>(~func_4(vec2<f32>(-606f, _wgslsmith_f_op_f32(-1979f * 1185f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, 685f, -416f, 737f) + vec4<f32>(-1225f, -255f, -1049f, -1142f))), func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), 8u)], Struct_1(vec2<i32>(u_input.c, u_input.a)), any(vec3<bool>(false, true, false)), ~global2[_wgslsmith_index_u32(56521u, 8u)])), global2[_wgslsmith_index_u32(func_4(vec2<f32>(-734f, -1062f), vec4<f32>(-1063f, _wgslsmith_f_op_f32(min(490f, -2160f)), _wgslsmith_f_op_f32(-751f - -849f), _wgslsmith_f_op_f32(step(-559f, 1388f))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(38952u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 7175u), vec4<u32>(41422u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), 23u)]) << (global2[_wgslsmith_index_u32(68392u, 8u)] % 32u), 8u)], 29137u);
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(max(u_input.b.x, ~u_input.c), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(u_input.c, u_input.c)), u_input.a, select(firstLeadingBit(u_input.a), u_input.b.x & u_input.a, func_3(global3[_wgslsmith_index_u32(var_0.x, 23u)]).x)), vec4<i32>(~(-2147483647i), -25848i, 2147483647i, u_input.b.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(30680i, u_input.c, u_input.a, 11459i), vec4<i32>(u_input.c, u_input.b.x, u_input.c, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-39419i, u_input.b.x, -16162i, u_input.b.x), vec4<i32>(-57573i, -2147483647i, 6051i, 0i)))));
    global1 = true;
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 16u)];
    global1 = true;
    return vec4<f32>(195f, -2199f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2143f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f - -146f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2882f, 1162f, false))))) * _wgslsmith_f_op_f32(298f * _wgslsmith_f_op_f32(max(-726f, _wgslsmith_f_op_f32(step(1023f, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(abs(~0u), 16u)];
    let var_1 = true;
    let var_2 = -firstLeadingBit(abs(countOneBits(reverseBits(vec4<i32>(-2147483647i, var_0.a.a.x, u_input.c, var_0.a.a.x)))));
    var var_3 = global0[_wgslsmith_index_u32(~(~(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(37736u, 8u)], 8u)] >> (1u % 32u))), 16u)];
    let var_4 = -14828i;
    var_3 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~28908u, 8u)], 16u)];
    var var_5 = 1i;
    var var_6 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40286u, 8u)], 16u)];
    let var_7 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, -1000f, -1245f, -671f)) * vec4<f32>(281f, -829f, -1000f, -525f)), _wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1522f, 276f, var_1)) - -442f), 994f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-116f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(429f * -477f)))), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.zwz, ~vec4<u32>(global2[_wgslsmith_index_u32(abs(4294967295u) & func_4(var_7.xx, vec4<f32>(var_7.x, var_7.x, -1498f, -1136f), Struct_1(vec2<i32>(11301i, var_2.x))), 8u)], _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~4294967295u, 8u)], 40676u), 1216u, global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_sub_vec2_u32(max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(18153u, 10243u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16294u, 8u)], 8u)], 8u)], 4294967295u), vec2<u32>(9739u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)])), ~vec2<u32>(96292u, 0u)), vec2<u32>(4294967295u, 69257u)), min(2147483647i << (firstLeadingBit(19026u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(108894u, 8u)], 8u)], 8u)]) % 32u), -var_0.a.a.x));
}

