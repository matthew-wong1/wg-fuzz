struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 12896i);

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(all(select(vec4<bool>(all(vec2<bool>(true, arg_0.a)), any(vec4<bool>(arg_0.a, true, false, true)), true, true), vec4<bool>(arg_2.b, any(vec4<bool>(false, false, false, arg_2.b)), arg_2.b, arg_0.a), false)));
    let var_1 = ~arg_1;
    var var_2 = Struct_2(arg_2, abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, u_input.b, u_input.b) | vec3<u32>(0u, 38274u, 1u)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(32437u, arg_2.a.x, arg_2.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(70208u, 46033u, 4294967295u), vec3<u32>(17951u, u_input.b, 0u))))), Struct_1(vec2<u32>(~_wgslsmith_mod_u32(1u, arg_2.a.x), firstTrailingBit(~u_input.b)), var_0.a), Struct_1(vec2<u32>(abs(u_input.b), ~u_input.b), arg_1.x == -1i), arg_2);
    var var_3 = global1[_wgslsmith_index_u32(arg_2.a.x, 16u)];
    let var_4 = global1[_wgslsmith_index_u32(1u, 16u)];
    return !select(select(!(!vec2<bool>(var_3.a, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, true), vec2<bool>(true, true)), var_4.a), arg_2.b), select(!vec2<bool>(false, arg_2.b), select(select(vec2<bool>(var_2.c.b, false), vec2<bool>(false, false), var_4.a), vec2<bool>(true, var_2.d.b), !vec2<bool>(false, arg_2.b)), false), !select(select(vec2<bool>(var_2.c.b, true), vec2<bool>(var_0.a, var_4.a), vec2<bool>(false, arg_2.b)), vec2<bool>(arg_2.b, var_4.a), select(vec2<bool>(var_0.a, false), vec2<bool>(arg_2.b, false), vec2<bool>(false, var_4.a))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    var var_0 = 740f;
    var var_1 = ~_wgslsmith_dot_vec2_i32(select(u_input.c.xx, ~u_input.a, vec2<bool>(true, arg_3.b)), _wgslsmith_add_vec2_i32(-vec2<i32>(global0.x, u_input.c.x) ^ u_input.a, -vec2<i32>(2147483647i, 2147483647i)));
    var_1 = _wgslsmith_sub_i32(~arg_1 | countOneBits(1i), _wgslsmith_div_i32(-12777i, u_input.c.x));
    var var_2 = _wgslsmith_add_vec3_i32(-firstLeadingBit(~u_input.c | abs(vec3<i32>(u_input.c.x, -1i, global0.x))), ~(~u_input.c));
    let var_3 = -485f;
    return all(!(!select(!vec4<bool>(false, arg_3.b, true, true), vec4<bool>(true, true, true, true), arg_3.b)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = vec2<i32>(abs(u_input.a.x), _wgslsmith_sub_i32(-global0.x, u_input.c.x));
    var var_0 = !func_4(countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), arg_0.ww), ~vec2<u32>(1u, u_input.b))), 0i, !func_3(Struct_3(arg_1.b), u_input.c, Struct_1(arg_1.a, true)), arg_1);
    global1 = array<Struct_3, 16>();
    var var_1 = (~0u << (min(_wgslsmith_mod_u32(4294967295u, ~0u), 0u) % 32u)) ^ reverseBits(~(arg_0.x & abs(arg_1.a.x)));
    let var_2 = vec4<u32>(4385u | (arg_1.a.x >> (_wgslsmith_sub_u32(arg_1.a.x >> (4294967295u % 32u), 15594u) % 32u)), 0u, arg_1.a.x >> (arg_1.a.x % 32u), arg_0.x);
    return Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~150181u, 4294967295u), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(36519u, u_input.b), arg_0.yw)) & vec2<u32>(arg_1.a.x, arg_0.x)), true);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<Struct_3, 16>();
    var var_0 = min(vec3<u32>(~4294967295u, 4294967295u, 4294967295u), ~((~vec3<u32>(1u, 1u, 38604u) >> (~vec3<u32>(u_input.b, 1u, 4294967295u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 84400u, 17027u), vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var_0 = min(firstTrailingBit(firstLeadingBit(vec3<u32>(countOneBits(46306u), countOneBits(0u), 1u))), vec3<u32>(arg_1.a.x, _wgslsmith_mult_u32(arg_1.a.x, reverseBits(arg_1.a.x)) >> ((arg_1.a.x | 0u) % 32u), u_input.b));
    var var_1 = Struct_1(var_0.yy, !func_4(firstTrailingBit(arg_1.a) | ~var_0.xz, _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.c.x), i32(-1i) * -13980i), func_3(global1[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 16u)], -u_input.c, func_2(vec4<u32>(var_0.x, u_input.b, arg_1.a.x, 0u), Struct_1(vec2<u32>(u_input.b, 4294967295u), true))), func_2(firstLeadingBit(vec4<u32>(0u, 0u, 28280u, arg_1.a.x)), func_2(vec4<u32>(4294967295u, 1u, 68567u, var_0.x), Struct_1(var_0.xx, false)))));
    var_1 = func_2(select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.x, 1u, 29211u, 0u)), ~(~vec4<u32>(1u, 1u, 12609u, var_1.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, u_input.b, 0u, var_0.x), min(vec4<u32>(0u, 1u, u_input.b, 28927u), vec4<u32>(arg_1.a.x, 35867u, 62415u, 4294967295u)), vec4<u32>(37u, var_1.a.x, 40004u, 66451u) ^ vec4<u32>(1u, arg_1.a.x, 0u, arg_1.a.x))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_1.a.x, 11554u, 60842u, arg_1.a.x) ^ vec4<u32>(4294967295u, u_input.b, var_0.x, var_1.a.x)), countOneBits(~vec4<u32>(0u, 0u, u_input.b, var_0.x))), false), func_2(~(vec4<u32>(arg_1.a.x, 34436u, 4294967295u, arg_1.a.x) << (vec4<u32>(var_0.x, var_0.x, var_0.x, var_1.a.x) % vec4<u32>(32u))) ^ ~vec4<u32>(1u, 103501u, 4294967295u, var_0.x), arg_1));
    return Struct_2(arg_1, reverseBits(min(max(vec3<u32>(var_1.a.x, var_0.x, 66373u), vec3<u32>(98000u, arg_1.a.x, 13142u)), vec3<u32>(var_1.a.x, arg_1.a.x, var_0.x)) >> (~(~vec3<u32>(var_0.x, arg_1.a.x, 30350u)) % vec3<u32>(32u))), Struct_1(var_1.a, !(u_input.a.x > global0.x)), func_2(vec4<u32>(arg_1.a.x ^ ~arg_1.a.x, max(~61667u, _wgslsmith_div_u32(var_0.x, 42158u)), _wgslsmith_sub_u32(var_0.x, firstTrailingBit(4294967295u)), ~_wgslsmith_div_u32(30254u, 69316u)), func_2(max(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(8458u, 40116u, 16078u, var_1.a.x) | vec4<u32>(var_0.x, var_1.a.x, u_input.b, 1u)), Struct_1(~arg_1.a, false))), arg_1);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    global1 = array<Struct_3, 16>();
    let var_0 = func_5(u_input.a, func_2(select(~(~vec4<u32>(u_input.b, 2012u, arg_0, u_input.b)), ~(vec4<u32>(7737u, u_input.b, arg_0, 3774u) << (vec4<u32>(33643u, arg_0, arg_0, u_input.b) % vec4<u32>(32u))), all(!vec3<bool>(true, arg_1, false))), Struct_1(max(vec2<u32>(u_input.b, arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 97783u), vec2<u32>(arg_0, 8884u), vec2<u32>(arg_0, 48556u))), _wgslsmith_div_f32(1643f, -267f) > _wgslsmith_f_op_f32(floor(arg_2)))), _wgslsmith_mult_vec4_i32((~vec4<i32>(769i, 4227i, -2147483647i, global0.x) ^ -vec4<i32>(global0.x, u_input.c.x, u_input.a.x, -2147483647i)) | _wgslsmith_div_vec4_i32(-vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.c.x), abs(vec4<i32>(-1i, 0i, global0.x, global0.x))), vec4<i32>(~_wgslsmith_mod_i32(35600i, 14644i), global0.x, -15317i, i32(-1i) * -11996i)));
    let var_1 = select(vec4<bool>(!(~u_input.b >= ~u_input.b), var_0.e.b, func_3(global1[_wgslsmith_index_u32(~(~1u), 16u)], (u_input.c | u_input.c) ^ firstLeadingBit(vec3<i32>(34160i, -33004i, global0.x)), var_0.e).x, arg_1), vec4<bool>(func_5(countOneBits(u_input.a), func_5(vec2<i32>(global0.x, u_input.a.x), var_0.e, firstLeadingBit(vec4<i32>(global0.x, u_input.c.x, -2147483647i, u_input.c.x))).e, ~(vec4<i32>(global0.x, global0.x, u_input.c.x, -1i) ^ vec4<i32>(u_input.c.x, u_input.a.x, global0.x, u_input.c.x))).a.b, func_3(Struct_3(true), ~u_input.c & select(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.c, vec3<bool>(true, arg_1, arg_1)), func_5(reverseBits(u_input.a), var_0.e, vec4<i32>(global0.x, 0i, 0i, 48384i)).c).x, !var_0.e.b, select(true, true, var_0.e.b)), arg_1);
    global0 = u_input.a;
    var var_2 = var_1.x;
    return func_5(reverseBits(min(u_input.a, _wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(-15882i, u_input.a.x))) ^ max(abs(vec2<i32>(global0.x, u_input.c.x)), vec2<i32>(-10378i, u_input.c.x))), var_0.a, vec4<i32>(~global0.x, -2147483647i, global0.x & _wgslsmith_dot_vec3_i32(countOneBits(u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.a.x, 0i), vec3<i32>(global0.x, -30773i, global0.x))), max(-1i, ~2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(22529i, global0.x, 0i), vec3<i32>(global0.x, u_input.a.x, global0.x)))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b, true, 1514f);
    global0 = vec2<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a.x, global0.x, -16594i), vec4<i32>(2147483647i, -1i, -2147483647i, u_input.a.x)) >> (4294967295u % 32u), ~u_input.c.x ^ countOneBits(global0.x)) << (_wgslsmith_sub_u32(var_0.a.x, 1u) % 32u));
    let var_1 = global1[_wgslsmith_index_u32(var_0.a.x, 16u)];
    let var_2 = Struct_2(Struct_1(var_0.a, var_1.a), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, u_input.b, u_input.b), vec3<u32>(18507u, var_0.a.x, var_0.a.x)) ^ ~firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, 23161u))), Struct_1(abs(vec2<u32>(var_0.a.x, 4294967295u) ^ reverseBits(var_0.a)), u_input.b <= (_wgslsmith_div_u32(0u, var_0.a.x) | var_0.a.x)), Struct_1(var_0.a, !func_5(vec2<i32>(global0.x, u_input.a.x), Struct_1(var_0.a, true), -vec4<i32>(global0.x, global0.x, global0.x, -2147483647i)).e.b), func_2(vec4<u32>(var_0.a.x, u_input.b, _wgslsmith_mod_u32(var_0.a.x << (0u % 32u), var_0.a.x | var_0.a.x), 32567u & _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4566u, 33418u), vec3<u32>(var_0.a.x, 1u, 4294967295u))), func_2(vec4<u32>(var_0.a.x, 24842u, var_0.a.x | 4294967295u, ~var_0.a.x), func_2(vec4<u32>(u_input.b, 25818u, u_input.b, 4294967295u), func_2(vec4<u32>(81770u, u_input.b, 36499u, 49607u), Struct_1(var_0.a, var_0.b))))));
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i >> (u_input.b % 32u), global0.x), max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), u_input.c.xx), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.c.x, global0.x)))), abs(~(~u_input.a))), ~(~0i));
    let var_3 = global1[_wgslsmith_index_u32(21047u & u_input.b, 16u)];
    var var_4 = func_1(_wgslsmith_sub_u32(~_wgslsmith_div_u32(var_0.a.x, min(var_2.d.a.x, u_input.b)), ~(func_1(4294967295u, false, 309f).a.x ^ var_0.a.x)), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(307f, 398f)), _wgslsmith_f_op_f32(2346f * 2136f), false & var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1224f, 617f))), func_5(u_input.a ^ u_input.c.xz, var_2.a, min(vec4<i32>(global0.x, u_input.c.x, global0.x, u_input.a.x), vec4<i32>(global0.x, u_input.a.x, u_input.c.x, u_input.c.x))).a.b)))));
    var var_5 = func_5(-vec2<i32>(global0.x ^ u_input.c.x, global0.x), func_5(u_input.a, func_5(countOneBits(u_input.c.xz), func_5(firstTrailingBit(vec2<i32>(u_input.a.x, -18549i)), var_2.a, countOneBits(vec4<i32>(46581i, global0.x, 12895i, -24590i))).a, vec4<i32>(~global0.x, -795i, 9306i, ~0i)).a, reverseBits(vec4<i32>(u_input.a.x, -1i, ~global0.x, global0.x))).e, min(vec4<i32>(max(u_input.a.x, -16945i), countOneBits(u_input.c.x), _wgslsmith_clamp_i32(global0.x, global0.x, 1i), u_input.c.x | 20281i), -vec4<i32>(1i, 2147483647i, 2147483647i, global0.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 44945i, -117312i, 0i), vec4<i32>(u_input.c.x, u_input.c.x, global0.x, u_input.c.x))) << (select(max(vec4<u32>(0u, 133802u, 4294967295u, 27977u), vec4<u32>(33997u, var_2.c.a.x, var_4.a.x, var_2.b.x) << (vec4<u32>(19850u, 4294967295u, 64269u, 71017u) % vec4<u32>(32u))), vec4<u32>(~var_0.a.x, var_2.a.a.x, 63119u, 2796u), true) % vec4<u32>(32u))).e;
    var var_6 = -1170f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.a.x, u_input.b) << ((func_2(~vec4<u32>(43117u, var_0.a.x, u_input.b, 3591u), func_1(20162u, false, -221f)).a & firstTrailingBit(max(vec2<u32>(8336u, var_4.a.x), var_4.a))) % vec2<u32>(32u)), vec4<i32>(~(-46837i), global0.x, u_input.c.x, _wgslsmith_clamp_i32(-reverseBits(-30361i), global0.x, -global0.x)), _wgslsmith_add_i32(10524i, _wgslsmith_mult_i32(select(global0.x, u_input.c.x, true), 0i) << (_wgslsmith_add_u32(func_5(u_input.a, var_2.a, vec4<i32>(-27985i, -1i, 2147483647i, global0.x)).e.a.x, ~var_5.a.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -664f))))));
}

