struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: array<Struct_1, 14>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

var<private> global4: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 62055u, 43056u, 39070u), vec4<u32>(0u, 0u, 69255u, 21096u), vec4<u32>(0u, 27213u, 45515u, 1u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(24u, 1u, 25886u, 55200u), vec4<u32>(1u, 4294967295u, 6625u, 1u), vec4<u32>(5454u, 60278u, 49589u, 1u), vec4<u32>(0u, 1004u, 0u, 0u), vec4<u32>(1u, 4294967295u, 22243u, 4294967295u), vec4<u32>(0u, 1u, 49246u, 0u), vec4<u32>(0u, 0u, 4294967295u, 55927u), vec4<u32>(0u, 1u, 50717u, 1u), vec4<u32>(0u, 1u, 77520u, 1u), vec4<u32>(0u, 0u, 45278u, 1u), vec4<u32>(36741u, 12438u, 4294967295u, 1u), vec4<u32>(0u, 20195u, 417u, 0u), vec4<u32>(0u, 1u, 0u, 8496u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(28864u, 14927u, 41788u, 12875u), vec4<u32>(1u, 4294967295u, 0u, 20014u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(0u, 6698u, 62500u, 26940u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(20477u, 1u, 4294967295u, 107675u), vec4<u32>(65669u, 4294967295u, 22815u, 4294967295u), vec4<u32>(0u, 29960u, 1u, 4294967295u), vec4<u32>(21234u, 10389u, 64936u, 27404u), vec4<u32>(97816u, 0u, 11377u, 13622u), vec4<u32>(4294967295u, 43797u, 21545u, 9208u), vec4<u32>(0u, 11139u, 0u, 1u), vec4<u32>(1u, 4294967295u, 10286u, 68188u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(abs(firstTrailingBit(select(firstLeadingBit(arg_2.a), ~vec4<u32>(global2.a.x, 13452u, 47675u, 1u), !vec4<bool>(global3.x, global3.x, false, false)))), arg_2.b, ~abs(4294967295u) | arg_2.c, ~arg_0.d);
    var var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, arg_0.b.x), vec2<i32>(var_0.b.x, u_input.b.x)), countOneBits(vec2<i32>(13964i, 0i))), 1i)), _wgslsmith_sub_i32(arg_0.b.x, ~max(global2.b.x << (u_input.a % 32u), ~var_0.b.x)), min(firstTrailingBit(-23838i) & var_0.b.x, ~abs(-1i)) >> (var_0.d.x % 32u));
    global1 = arg_0.b.x;
    var_1 = arg_2.b.xyw;
    let var_2 = arg_0;
    return (~select(23488u, arg_0.c, !global3.x) | var_2.d.x) >> (arg_0.a.x % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(1064f * 965f);
    var var_2 = global0[_wgslsmith_index_u32(40063u, 14u)];
    let var_3 = Struct_1(abs(arg_3.a), -(abs(_wgslsmith_mult_vec4_i32(arg_0.b, vec4<i32>(arg_0.b.x, u_input.b.x, arg_3.b.x, arg_3.b.x))) << (_wgslsmith_add_vec4_u32(~var_2.a, vec4<u32>(global2.c, u_input.a, arg_0.d.x, global2.a.x)) % vec4<u32>(32u))), global2.d.x, ~vec2<u32>(var_2.d.x, var_0));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1399f + -1000f)))))));
    return ~(~arg_3.a);
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(1i, arg_0.b.x), firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), global2.b.www), i32(-1i) * -3863i), ~firstLeadingBit(vec4<i32>(0i, arg_0.b.x, 2147483647i, global2.b.x))), ~_wgslsmith_clamp_i32(~6606i, u_input.b.x ^ 13632i, _wgslsmith_mult_i32(global2.b.x >> (1u % 32u), -global2.b.x)), _wgslsmith_div_i32(-6581i, u_input.b.x), abs(arg_0.b.x));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_1 = Struct_1(~_wgslsmith_div_vec4_u32(~abs(global2.a), select(_wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(global2.c, 4294967295u, 37456u, global2.c)), min(vec4<u32>(1u, 4294967295u, 4294967295u, global2.a.x), global2.a), select(vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(global3.x, false, false, true)))), reverseBits(vec4<i32>(global2.b.x, -1i, _wgslsmith_mod_i32(-2147483647i, arg_0.b.x), var_0.x) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, 4294967295u), firstLeadingBit(u_input.a), 0u, firstTrailingBit(arg_0.d.x)) % vec4<u32>(32u))), _wgslsmith_div_u32(0u, func_3(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, 4294967295u, 0u, 0u), vec4<u32>(u_input.a, 19475u, u_input.a, global2.c)), ~vec4<i32>(arg_0.b.x, 31589i, 1i, u_input.b.x), ~global2.d.x, vec2<u32>(1u, 18486u)), 1u, global0[_wgslsmith_index_u32(arg_0.a.x, 14u)])), vec2<u32>(1u, _wgslsmith_div_u32(59786u, u_input.a)));
    let var_2 = countOneBits(var_1.b.yzy);
    return 962f;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_1(func_4(global0[_wgslsmith_index_u32(47980u, 14u)], vec3<bool>(global3.x, global3.x, global3.x), func_3(global0[_wgslsmith_index_u32(111776u, 14u)], u_input.a, global0[_wgslsmith_index_u32(26440u, 14u)]), Struct_1(vec4<u32>(4294967295u, arg_0.x, 1u, 0u), vec4<i32>(arg_1, arg_1, arg_2, 21485i), u_input.a, vec2<u32>(global2.a.x, 90788u))), reverseBits(-vec4<i32>(u_input.b.x, arg_1, 1i, -29462i)), global2.d.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_sub_vec2_u32(global2.a.wz, arg_0), global2.d)))), _wgslsmith_f_op_f32(select(-1614f, _wgslsmith_f_op_f32(floor(-1017f)), false)));
    var var_1 = _wgslsmith_mod_vec2_u32(arg_0, ~select(~global2.d, vec2<u32>(1u, 20720u), any(vec4<bool>(false, global3.x, true, global3.x))) >> (firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0.x), arg_0), global2.a.yz, global2.d ^ arg_0)) % vec2<u32>(32u)));
    var_0 = -338f;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.x, _wgslsmith_add_u32(~(~1u), 24416u)), 4294967295u);
    var_2 = func_3(Struct_1(~global2.a << (vec4<u32>(firstTrailingBit(1u), ~0u, ~4294967295u, firstTrailingBit(4294967295u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b.x, global2.b.x, arg_1, -25099i), global2.b), -(global2.b >> (vec4<u32>(55338u, 1u, 0u, 58739u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, 11774i, arg_2, 0i), vec4<i32>(arg_2, global2.b.x, global2.b.x, 1i), vec4<bool>(global3.x, true, global3.x, global3.x)), vec4<i32>(2147483647i, arg_1, -27290i, arg_1))), ~(~firstTrailingBit(2992u)), reverseBits(~(~arg_0))), _wgslsmith_add_u32(select(~u_input.a, ~41253u, global2.a.x >= 50966u) & var_1.x, 47609u), Struct_1(~select(global2.a, max(global2.a, vec4<u32>(global2.c, 1u, 4294967295u, global2.a.x)), select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x), global3.x)), vec4<i32>(~global2.b.x, global2.b.x, arg_2, -6900i), var_1.x | 4294967295u, global2.a.xw));
    return vec4<i32>(countOneBits(arg_2), u_input.b.x, -1i, _wgslsmith_clamp_i32(~(~arg_2), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_2, 28952i, global2.b.x, -13746i), vec4<i32>(2147483647i, 0i, 6712i, arg_2)), global2.b), global2.b.x & 30149i));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 14u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.zy);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f));
    var var_3 = arg_0;
    var var_4 = 1u;
    return -(-_wgslsmith_mult_i32(abs(7672i), arg_0.b.x) ^ arg_0.b.x);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global4 = array<vec4<u32>, 31>();
    let var_0 = func_6(Struct_1(global2.a, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global2.b.x)), func_2(vec2<u32>(global2.d.x, 54724u), 12222i, global2.b.x) | ~global2.b), u_input.a, ~vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(_wgslsmith_add_u32(38081u, global2.d.x), ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-363f)), _wgslsmith_f_op_f32(select(-1730f, arg_0, global3.x)), -612f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, arg_0, 494f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -384f, 1209f) * vec3<f32>(-376f, 577f, arg_0))))), Struct_1(vec4<u32>(2712u, _wgslsmith_sub_u32(global2.a.x >> (0u % 32u), u_input.a), func_3(Struct_1(global2.a, global2.b, 1u, global2.a.yw), 15695u, Struct_1(vec4<u32>(0u, 32693u, 66756u, 12560u), vec4<i32>(0i, 10501i, u_input.b.x, u_input.b.x), u_input.a, vec2<u32>(u_input.a, global2.c))), ~_wgslsmith_add_u32(28644u, 74675u)), ~_wgslsmith_clamp_vec4_i32(-global2.b, -global2.b, abs(vec4<i32>(global2.b.x, 1i, -81577i, global2.b.x))), ~4294967295u, global2.a.xw));
    var var_1 = abs(vec4<u32>(select(48212u, 20957u, true), func_3(global0[_wgslsmith_index_u32(10629u, 14u)], min(~0u, firstLeadingBit(u_input.a)), Struct_1(~global2.a, global2.b, u_input.a, max(global2.a.xz, global2.d))), _wgslsmith_add_u32(4294967295u, u_input.a), ~(global2.c & 4294967295u)));
    global0 = array<Struct_1, 14>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, arg_0, 691f) + vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -508f, arg_0), vec3<f32>(627f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-126f, 1109f, 884f), vec3<f32>(504f, -427f, 655f))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(arg_0, 381f, -125f)), select(!vec3<bool>(false, global3.x, global3.x), vec3<bool>(false, global3.x, true), select(vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, true, global3.x), global3.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(var_2.x, 700f, var_2.x))), vec3<f32>(var_2.x, -1000f, -462f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f - -248f)), _wgslsmith_f_op_f32(max(-1980f, -682f)), _wgslsmith_f_op_f32(f32(-1f) * -1677f)) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2279f, 739f)))))));
    let var_1 = false;
    global2 = Struct_1(vec4<u32>(35446u, func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a & u_input.a, 1u), 14u)], !(!vec3<bool>(true, global3.x, true)), ~_wgslsmith_clamp_u32(20043u, 70544u, 4294967295u), Struct_1(vec4<u32>(1u, global2.d.x, 113140u, u_input.a), abs(vec4<i32>(u_input.b.x, u_input.b.x, global2.b.x, -10877i)), 1u, vec2<u32>(4294967295u, 39595u))).x, 85821u, ~(38466u & _wgslsmith_mult_u32(u_input.a, 4294967295u))), ~global2.b, u_input.a, vec2<u32>(_wgslsmith_div_u32(u_input.a, firstLeadingBit(~44845u)), 4294967295u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, global2.c), countOneBits(vec3<u32>(4294967295u, 12647u, u_input.a))) << (vec3<u32>(abs(u_input.a), 3154u & global2.a.x, 14659u) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(global2.a.zyy, vec3<u32>(_wgslsmith_dot_vec3_u32(global2.a.zyy, vec3<u32>(77524u, 0u, 1u)), global2.d.x, ~14148u))), 14u)];
    global1 = -17990i;
    global4 = array<vec4<u32>, 31>();
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_4 = select(!(!(!var_1)), all(select(!vec3<bool>(var_1, global3.x, true), vec3<bool>(true, true, all(vec3<bool>(false, global3.x, var_1))), global3.x)), any(!(!vec4<bool>(false, true, global3.x, var_1))) || false);
    var var_5 = ~(~(~vec3<u32>(global2.c, global2.c, 20427u) | var_3.a.xyw)) & ~vec3<u32>(var_2.d.x, func_4(global0[_wgslsmith_index_u32(~var_2.c, 14u)], !vec3<bool>(false, true, global3.x), 0u, global0[_wgslsmith_index_u32(27208u, 14u)]).x, ~var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

