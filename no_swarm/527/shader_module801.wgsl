struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(892f, 218f, -692f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<u32>(59588u, 1u), 348u, vec2<i32>(-21288i, -19392i), 38206i, -1278f), Struct_1(vec2<u32>(1u, 0u), 39156u, vec2<i32>(2147483647i, 0i), 2147483647i, 1536f), Struct_1(vec2<u32>(4294967295u, 4294967295u), 45095u, vec2<i32>(2147483647i, 16900i), -77061i, 698f), Struct_1(vec2<u32>(0u, 37275u), 0u, vec2<i32>(2147483647i, i32(-2147483648)), 29028i, 696f), Struct_1(vec2<u32>(1u, 1u), 23342u, vec2<i32>(44403i, -1i), -1i, 1053f), Struct_1(vec2<u32>(4294967295u, 1u), 10293u, vec2<i32>(-21261i, -1i), 2147483647i, 1122f), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, vec2<i32>(27027i, -1i), 48710i, -672f), Struct_1(vec2<u32>(2283u, 16905u), 0u, vec2<i32>(-3929i, 18025i), 1i, 665f), Struct_1(vec2<u32>(1u, 4294967295u), 1u, vec2<i32>(2147483647i, -1i), -59560i, -1917f), Struct_1(vec2<u32>(5066u, 1u), 0u, vec2<i32>(0i, i32(-2147483648)), 1i, -603f), Struct_1(vec2<u32>(30554u, 1u), 98690u, vec2<i32>(21299i, 2147483647i), 1i, 1829f), Struct_1(vec2<u32>(95980u, 28442u), 4294967295u, vec2<i32>(-61247i, 1i), -1i, 698f), Struct_1(vec2<u32>(0u, 108947u), 2625u, vec2<i32>(0i, 1i), 9217i, -618f), Struct_1(vec2<u32>(4294967295u, 8971u), 28494u, vec2<i32>(35108i, -8620i), -39872i, 1617f), Struct_1(vec2<u32>(18645u, 8538u), 4294967295u, vec2<i32>(47748i, 1i), 18015i, -795f), Struct_1(vec2<u32>(0u, 120872u), 77283u, vec2<i32>(65866i, 1i), 0i, 1379f), Struct_1(vec2<u32>(45592u, 98486u), 22832u, vec2<i32>(-71181i, 1i), 38507i, 981f), Struct_1(vec2<u32>(24352u, 21184u), 0u, vec2<i32>(-1i, 55167i), 50554i, -516f), Struct_1(vec2<u32>(0u, 1u), 43614u, vec2<i32>(2147483647i, -9002i), -39493i, 1239f), Struct_1(vec2<u32>(0u, 4294967295u), 0u, vec2<i32>(i32(-2147483648), 0i), 1i, 498f), Struct_1(vec2<u32>(4294967295u, 0u), 15840u, vec2<i32>(-61386i, 1i), 49459i, 203f), Struct_1(vec2<u32>(0u, 21819u), 81081u, vec2<i32>(0i, 1i), -52782i, -1000f), Struct_1(vec2<u32>(0u, 8340u), 22641u, vec2<i32>(-44320i, 8067i), -1i, 1000f), Struct_1(vec2<u32>(54151u, 48779u), 1u, vec2<i32>(0i, -22512i), 1i, 657f), Struct_1(vec2<u32>(0u, 0u), 4294967295u, vec2<i32>(2147483647i, 30237i), -34406i, 239f), Struct_1(vec2<u32>(43348u, 41997u), 13826u, vec2<i32>(1i, 1i), 0i, 366f), Struct_1(vec2<u32>(1u, 4294967295u), 26324u, vec2<i32>(-27093i, 19442i), 2147483647i, 695f), Struct_1(vec2<u32>(4294967295u, 12288u), 4294967295u, vec2<i32>(20127i, 27361i), 0i, -1452f), Struct_1(vec2<u32>(20971u, 39304u), 8587u, vec2<i32>(0i, 2147483647i), 1i, 1279f));

var<private> global2: array<i32, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_1(arg_1.xy, ~max(max(max(arg_1.x, 0u), arg_1.x), u_input.c << (u_input.a % 32u)), -_wgslsmith_add_vec2_i32(u_input.b.zx, ~(u_input.b.zy >> (vec2<u32>(4294967295u, arg_1.x) % vec2<u32>(32u)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, global0.x))), 1000f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f - global0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e))));
    global2 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e)));
    let var_3 = vec2<i32>(_wgslsmith_sub_i32(~7973i, arg_0) | (i32(-1i) * -(var_0.d >> (2952u % 32u))), global2[_wgslsmith_index_u32(26828u, 29u)]);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, u_input.b.x & 0i), ~min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2877i, 2147483647i), var_0.c, vec2<i32>(-18729i, 0i)), var_0.c), ~(~vec2<i32>(var_3.x, var_3.x)) | max(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d, -3598i), u_input.b.xz), var_0.c | var_0.c)), ~(~u_input.b.xz));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(49545i, reverseBits(-19104i), u_input.b.x), 1i & (-45794i & global2[_wgslsmith_index_u32(u_input.c, 29u)]))), func_3(-2147483647i, max(vec3<u32>(100229u, u_input.c, _wgslsmith_sub_u32(0u, u_input.a)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(128509u, u_input.c, 12776u), vec3<u32>(u_input.a, u_input.c, u_input.a))))), select(global2[_wgslsmith_index_u32(~max(u_input.c, u_input.a), 29u)], _wgslsmith_add_i32(~20607i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.x)), ~global2[_wgslsmith_index_u32(1u, 29u)] < (u_input.b.x ^ 0i)) | _wgslsmith_sub_i32(-(~global2[_wgslsmith_index_u32(u_input.a, 29u)]), u_input.b.x), _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), -34478i) | 2147483647i);
    global2 = array<i32, 29>();
    global1 = array<Struct_1, 29>();
    var var_1 = max(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, u_input.b.x, var_0.x, -2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(10320i, -1954i, global2[_wgslsmith_index_u32(u_input.a, 29u)], var_0.x), vec4<i32>(50821i, global2[_wgslsmith_index_u32(u_input.c, 29u)], var_0.x, var_0.x)), -vec4<i32>(-19320i, var_0.x, global2[_wgslsmith_index_u32(u_input.c, 29u)], -2147483647i), min(vec4<i32>(-69632i, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, -1i, -38998i, global2[_wgslsmith_index_u32(3340u, 29u)]))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i, -2147483647i), vec4<i32>(var_0.x, -1i, u_input.b.x, -32632i), vec4<i32>(global2[_wgslsmith_index_u32(37463u, 29u)], var_0.x, global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)]))), (vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.x, 0i) & reverseBits(vec4<i32>(u_input.b.x, var_0.x, 29111i, 6945i))) & -vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], 0i, var_0.x)), -vec4<i32>(-1i, select(var_0.x, u_input.b.x, false) | -u_input.b.x, -1i, _wgslsmith_clamp_i32(0i, 20378i, var_0.x) ^ -1i));
    var_0 = select(-(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(50683u, 29u)], var_0.x, var_1.x, global2[_wgslsmith_index_u32(1u, 29u)]), vec4<i32>(18074i, var_1.x, global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)])) | -vec4<i32>(11699i, u_input.b.x, u_input.b.x, 0i)), vec4<i32>(~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4294967295u, 29u)], var_1.x), -23804i, _wgslsmith_sub_i32(-9756i, -1i), -2147483647i), vec4<bool>(true && any(vec4<bool>(true, false, true, true)), true, true, true)) | _wgslsmith_add_vec4_i32(-vec4<i32>(-var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, -2657i), vec3<i32>(36911i, global2[_wgslsmith_index_u32(u_input.a, 29u)], 32120i)), var_1.x, 0i), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], var_1.x, global2[_wgslsmith_index_u32(u_input.c, 29u)]), vec4<i32>(var_0.x, var_0.x, 53202i, -30273i), vec4<i32>(var_1.x, -1i, 33670i, var_1.x)), min(vec4<i32>(var_1.x, var_1.x, var_0.x, var_1.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, var_1.x)))));
    return global1[_wgslsmith_index_u32(max(0u << (~u_input.a % 32u), 51112u), 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.b, 29u)];
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(967f + -2621f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -240f), global0.x)), _wgslsmith_f_op_f32(max(1047f, _wgslsmith_f_op_f32(-var_0.e)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1516f)) + _wgslsmith_f_op_f32(-var_0.e)) - -1644f), 824f, -1000f));
    let var_1 = arg_0.d;
    var var_2 = Struct_1(~(~vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4793u, arg_0.b), vec4<u32>(4294967295u, u_input.c, 39112u, 20148u)))), min(abs(countOneBits(var_0.a.x)), var_0.a.x | func_2().a.x), -_wgslsmith_div_vec2_i32(reverseBits(arg_0.c), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], 1i)), var_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 454f) - 1101f), global0.x)), _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(global0.x + 842f)))));
    let var_3 = Struct_1(var_0.a >> (vec2<u32>(_wgslsmith_sub_u32(var_2.b, u_input.c) << (firstLeadingBit(u_input.c) % 32u), 1u) % vec2<u32>(32u)), 4294967295u, ~(~arg_0.c), 0i | ~var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -967f) + _wgslsmith_f_op_f32(742f * -1000f))))));
    return vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, var_3.b, 0u), vec3<u32>(var_2.b, 1u, 69857u)) & 14657u), ~(~(~46262u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> vec3<f32> {
    global2 = array<i32, 29>();
    var var_0 = func_4(func_2(), vec4<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), true, false, false));
    let var_1 = vec4<f32>(-350f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.x)))), -280f, func_2().e);
    var_0 = max(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.a, arg_2.yz) ^ ~vec2<u32>(u_input.c, var_0.x), ~(~vec2<u32>(58004u, var_0.x))), abs(82363u) & arg_2.x), func_4(Struct_1(abs(arg_0.a) | vec2<u32>(arg_2.x, 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63627u, 66098u, arg_1), vec4<u32>(u_input.c, 1u, 1u, 1u)), abs(vec2<i32>(global2[_wgslsmith_index_u32(63484u, 29u)], 26511i)), 3359i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, -655f))), vec4<bool>(true, 1490f <= _wgslsmith_f_op_f32(-437f + global0.x), any(vec4<bool>(true, true, true, true)), true | any(vec3<bool>(true, false, false)))));
    var var_2 = arg_1 & ~func_2().a.x;
    return vec3<f32>(1652f, -953f, func_2().e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 81760u;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, 495f)), global0.x, _wgslsmith_f_op_f32(select(global0.x, -561f, true)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(408f + global0.x), -1355f, -1116f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec2<u32>(var_0, 72429u), var_0, vec2<i32>(-2147483647i, -2147483647i), global2[_wgslsmith_index_u32(var_0, 29u)], -417f), 4294967295u, vec3<u32>(6925u, 89156u, var_0), global0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1043f, global0.x, true)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    var var_1 = u_input.b.x;
    global2 = array<i32, 29>();
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zy, _wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_0 << (27874u % 32u), 29u)], global2[_wgslsmith_index_u32(var_0, 29u)] >> (var_0 % 32u)), -vec2<i32>(-46350i, -25357i) ^ vec2<i32>(global2[_wgslsmith_index_u32(36162u, 29u)], -1i))), u_input.b.yz);
    var var_3 = true;
    var var_4 = Struct_1(~vec2<u32>(4294967295u, ~_wgslsmith_div_u32(24491u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 25794u, ~_wgslsmith_sub_u32(var_0, u_input.a)), vec3<u32>(~1u, firstLeadingBit(1u), 1u & var_0)), var_2, u_input.b.x, _wgslsmith_f_op_f32(func_2().e + -1591f));
    var_3 = true;
    let var_5 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.c, 4294967295u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35775u, var_0, var_4.a.x), vec4<u32>(var_4.a.x, 1u, var_0, u_input.c))), firstTrailingBit(_wgslsmith_mod_u32(var_0, abs(0u)))), vec2<u32>(59415u, _wgslsmith_sub_u32(var_0, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2167u, u_input.a, var_4.a.x) << (~vec3<u32>(1u, var_5.x, var_0) % vec3<u32>(32u)), select(~vec3<u32>(26057u, 91994u, var_5.x), max(vec3<u32>(var_5.x, var_0, var_0), vec3<u32>(12455u, 1u, 4294967295u)), false)), _wgslsmith_mult_u32(17594u, ~4294967295u & _wgslsmith_mod_u32(var_0, var_0))), u_input.b.x);
}

