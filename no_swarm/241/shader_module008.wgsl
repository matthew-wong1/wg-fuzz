struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(vec3<u32>(~675u, reverseBits(1u), ~1u) | (_wgslsmith_add_vec3_u32(~vec3<u32>(46u, 65848u, 4294967295u), vec3<u32>(1u, 1u, 1u)) | ~firstTrailingBit(vec3<u32>(4294967295u, 851u, 82641u))), ~min(vec4<u32>(countOneBits(10019u), _wgslsmith_add_u32(40019u, 3848u), 0u, _wgslsmith_div_u32(10887u, 4294967295u)), vec4<u32>(min(4294967295u, 4294967295u), 1u, 4294967295u, 4294967295u)), 1i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 55851u), vec2<u32>(0u, 6195u), vec2<u32>(45743u, 4294967295u)), abs(vec2<u32>(4294967295u, 1u))), ~vec2<u32>(4294967295u, 0u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 96251u), vec2<u32>(1u, 1u), vec2<u32>(21805u, 1u)) % vec2<u32>(32u))) % 32u), Struct_1(40272i), Struct_1(select(2147483647i, max(70138i, reverseBits(u_input.b)), !select(false, false, true))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(10093i, global0.a), vec2<i32>(-1i, select(var_0.c, u_input.a.x, false)))), global0.a, _wgslsmith_div_i32(min(select(-33611i, -43556i, false), -var_0.c), -1i) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(47459u, var_0.a.x, 1u)) >> (var_0.a % vec3<u32>(32u)), ~var_0.a) % 32u));
    let var_2 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(19419i, -1i, var_1.x), vec3<i32>(var_0.e.a, var_1.x, -11210i)) & vec3<i32>(-12683i, u_input.b, 1i), -(~vec3<i32>(0i, global0.a, u_input.b)), ~(vec3<i32>(2147483647i, 0i, u_input.b) ^ vec3<i32>(26301i, var_0.d.a, global0.a))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-25011i, global0.a, 2147483647i), vec3<i32>(var_0.c, var_1.x, -5161i))) >> (~var_0.a % vec3<u32>(32u)));
    let var_3 = countOneBits(reverseBits(0u));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, -862f)), 1f))) + -746f)));
    return _wgslsmith_clamp_u32(countOneBits(min(~firstLeadingBit(var_3), ~_wgslsmith_add_u32(var_0.a.x, var_0.a.x))), ~max(1u, ~4294967295u), 1u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    global1 = select(1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_1.a.b.x), arg_3.a.b.ww), vec2<u32>(arg_1.a.b.x, 34157u) ^ _wgslsmith_clamp_vec2_u32(arg_3.a.b.xx, vec2<u32>(arg_2, arg_2), vec2<u32>(arg_3.a.a.x, 9401u))), arg_1.b.x) >> (firstTrailingBit(~14476u) % 32u);
    global1 = _wgslsmith_div_u32(min(_wgslsmith_mult_u32(48870u, select(20215u, 0u, true)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 23613u, 1u, arg_3.a.b.x), vec4<u32>(arg_3.a.a.x, 1u, 0u, arg_1.a.a.x)), arg_3.a.b)) << (arg_3.a.a.x % 32u), max(~func_3(), ~(1u >> (arg_2 % 32u))));
    let var_0 = arg_1.b.zz;
    global1 = _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(1u, ~34199u));
    global0 = arg_3.c;
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global0 = func_2(_wgslsmith_div_vec4_i32(vec4<i32>(max(abs(arg_1.d), firstLeadingBit(5850i)), -20741i, _wgslsmith_mult_i32(arg_2.a.e.a, -27581i ^ global0.a), -2224i), vec4<i32>(abs(i32(-1i) * -1i), -arg_2.a.e.a, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, u_input.b, arg_2.d), vec3<i32>(arg_2.a.d.a, arg_1.c.a, arg_2.a.c))), 0i)), Struct_3(Struct_2(_wgslsmith_add_vec3_u32(select(arg_2.a.a, arg_1.a.a, arg_2.b), select(vec3<u32>(4294967295u, 1u, 0u), arg_2.a.a, vec3<bool>(arg_1.b.x, arg_2.b.x, arg_1.b.x))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.a.x, 7815u, arg_2.a.b.x, arg_2.a.b.x), vec4<u32>(73558u, 15981u, arg_2.a.b.x, 1u))), u_input.b, Struct_1(arg_2.a.d.a), Struct_1(-2147483647i << (arg_1.a.a.x % 32u))), vec3<bool>(false, true, all(arg_1.b.xy)), arg_1.c, u_input.b), _wgslsmith_mult_u32(firstTrailingBit(1u), ~(~4294967295u)), func_2(countOneBits(abs(vec4<i32>(u_input.b, u_input.b, arg_0, arg_2.a.c) ^ vec4<i32>(u_input.b, 0i, -2147483647i, u_input.b))), Struct_3(arg_1.a, arg_2.b, arg_1.a.d, global0.a), firstTrailingBit(arg_1.a.a.x), Struct_3(arg_2.a, !arg_1.b, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, arg_0, arg_1.c.a), vec4<i32>(global0.a, arg_2.a.d.a, u_input.b, 1i))), 2147483647i))).a.d;
    var var_0 = arg_2;
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f)))) == 381f, arg_2.b.x, arg_1.b.x, false);
    var var_2 = Struct_2(var_0.a.a, vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(arg_2.a.b.x, 40009u, 4294967295u, 60870u)), 0u), 47655u, arg_1.a.a.x, ~1u), _wgslsmith_add_i32(max(~var_0.d, min(2147483647i, countOneBits(7990i))), arg_0), arg_2.c, func_2(vec4<i32>(-9185i, var_0.a.c, max(-19080i, -arg_1.a.e.a), firstTrailingBit(var_0.c.a)), arg_2, arg_2.a.b.x, func_2(firstLeadingBit(~vec4<i32>(global0.a, var_0.a.e.a, arg_2.a.e.a, arg_1.c.a)), func_2(~vec4<i32>(-1i, -1i, arg_1.d, arg_2.d), func_2(vec4<i32>(-1i, -4766i, global0.a, -2147483647i), Struct_3(arg_2.a, var_0.b, arg_1.a.d, var_0.c.a), 4294967295u, Struct_3(Struct_2(vec3<u32>(5385u, arg_1.a.a.x, var_0.a.b.x), vec4<u32>(arg_1.a.a.x, 1859u, arg_1.a.b.x, arg_2.a.b.x), -4426i, arg_2.c, Struct_1(arg_0)), vec3<bool>(arg_2.b.x, false, true), Struct_1(global0.a), global0.a)), _wgslsmith_sub_u32(4294967295u, 1u), arg_1), 0u, func_2(_wgslsmith_div_vec4_i32(vec4<i32>(-14030i, 47512i, global0.a, var_0.d), vec4<i32>(-2147483647i, var_0.c.a, arg_2.d, var_0.d)), arg_1, _wgslsmith_add_u32(15808u, 8586u), Struct_3(Struct_2(arg_2.a.b.wwy, var_0.a.b, var_0.d, var_0.a.d, var_0.a.d), vec3<bool>(false, arg_1.b.x, arg_1.b.x), Struct_1(2147483647i), var_0.a.e.a)))).c);
    let var_3 = func_2(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_2.c.a, global0.a), var_0.c.a << (4294967295u % 32u), arg_0 << (32662u % 32u), -2147483647i), -select(vec4<i32>(var_0.a.d.a, 28080i, u_input.b, -13830i), vec4<i32>(1i, 2892i, 2147483647i, 1i), vec4<bool>(arg_1.b.x, arg_2.b.x, var_1.x, false)))), Struct_3(func_2(-(vec4<i32>(-2147483647i, 57124i, var_2.d.a, global0.a) & vec4<i32>(u_input.b, -67306i, global0.a, var_2.d.a)), Struct_3(func_2(vec4<i32>(arg_2.d, arg_1.c.a, arg_2.c.a, 0i), Struct_3(var_0.a, vec3<bool>(true, var_1.x, false), Struct_1(global0.a), arg_0), 34503u, arg_1).a, vec3<bool>(true, arg_2.b.x, arg_2.b.x), Struct_1(-1i), reverseBits(var_2.c)), _wgslsmith_add_u32(2672u, ~arg_1.a.a.x), func_2(vec4<i32>(1i, var_2.e.a, 2147483647i, -29842i), Struct_3(arg_1.a, vec3<bool>(true, true, arg_2.b.x), arg_1.c, 1i), ~1u, Struct_3(arg_2.a, vec3<bool>(var_1.x, true, false), Struct_1(var_2.c), 15125i))).a, select(!func_2(vec4<i32>(0i, 0i, var_0.d, 0i), arg_2, 0u, arg_2).b, !vec3<bool>(false, true, var_1.x), arg_1.b.x), Struct_1(abs(i32(-1i) * -1i)), 1i), ~select(abs(var_0.a.a.x), arg_2.a.b.x, var_1.x) >> (var_0.a.a.x % 32u), func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -16517i, 34885i), reverseBits(vec3<i32>(-2147483647i, -63082i, global0.a))), _wgslsmith_clamp_i32(-var_0.c.a, -var_2.e.a, func_2(vec4<i32>(-28792i, arg_1.a.e.a, 2147483647i, 20040i), arg_1, 1u, arg_1).a.c), reverseBits(~(-39054i)), var_0.c.a), arg_1, _wgslsmith_mod_u32(0u, var_2.b.x) >> (reverseBits(_wgslsmith_dot_vec2_u32(arg_1.a.b.wy, var_0.a.a.yy)) % 32u), arg_2)).a;
    return var_3.b.x;
}

fn func_5(arg_0: u32) -> vec4<f32> {
    let var_0 = func_2(_wgslsmith_mod_vec4_i32(-select(-vec4<i32>(17870i, -1i, u_input.a.x, global0.a), ~vec4<i32>(global0.a, 17095i, u_input.b, u_input.b), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)), -vec4<i32>(_wgslsmith_sub_i32(-52617i, 21962i), 1i, min(global0.a, global0.a), -u_input.a.x)), func_2(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-19691i, global0.a, -56212i, -1i), vec4<i32>(global0.a, 55428i, global0.a, -34684i)), -vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x)), ~(~vec4<i32>(u_input.b, u_input.a.x, global0.a, -6265i)), true), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, arg_0) ^ vec3<u32>(1u, arg_0, arg_0), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, 23189u), vec4<u32>(24126u, 62484u, arg_0, arg_0)), 2147483647i, Struct_1(15094i), Struct_1(65883i)), func_2(vec4<i32>(1i, 0i, -2147483647i, global0.a) | vec4<i32>(global0.a, u_input.a.x, 38186i, -2147483647i), Struct_3(Struct_2(vec3<u32>(1u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0), global0.a, Struct_1(global0.a), Struct_1(-3286i)), vec3<bool>(true, true, true), Struct_1(global0.a), 1i), func_3(), Struct_3(Struct_2(vec3<u32>(arg_0, 8553u, 37132u), vec4<u32>(1u, 4294967295u, 1u, 57851u), -48065i, Struct_1(global0.a), Struct_1(49816i)), vec3<bool>(true, false, false), Struct_1(40640i), 12000i)).b, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-37703i, u_input.a.x, 1i, -2147483647i), vec4<i32>(2147483647i, global0.a, global0.a, global0.a)), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, 1u, 1u), global0.a, Struct_1(global0.a), Struct_1(7349i)), vec3<bool>(true, true, false), Struct_1(global0.a), u_input.a.x), arg_0, Struct_3(Struct_2(vec3<u32>(67697u, arg_0, 0u), vec4<u32>(0u, 6815u, arg_0, arg_0), u_input.b, Struct_1(u_input.b), Struct_1(u_input.b)), vec3<bool>(true, true, true), Struct_1(u_input.b), -35687i)).c, reverseBits(i32(-1i) * -57708i)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 4294967295u, arg_0), ~arg_0), func_2(vec4<i32>(_wgslsmith_sub_i32(global0.a, 57365i), ~(-1i), countOneBits(-18170i), i32(-1i) * -2147483647i), Struct_3(func_2(vec4<i32>(global0.a, global0.a, global0.a, u_input.b), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, 0u), vec4<u32>(24706u, 4294967295u, 1u, arg_0), -2147483647i, Struct_1(u_input.a.x), Struct_1(-43161i)), vec3<bool>(true, true, true), Struct_1(global0.a), u_input.a.x), arg_0, Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, arg_0), vec4<u32>(39892u, 4294967295u, arg_0, arg_0), -1i, Struct_1(1i), Struct_1(u_input.b)), vec3<bool>(false, false, false), Struct_1(-1i), -2147483647i)).a, vec3<bool>(true, true, true), Struct_1(global0.a), global0.a), ~(~arg_0), func_2(select(vec4<i32>(u_input.a.x, global0.a, 2150i, -2119i), vec4<i32>(global0.a, global0.a, global0.a, -1i), false), func_2(vec4<i32>(1i, -42641i, global0.a, -2147483647i), Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 36614u), vec4<u32>(1u, arg_0, arg_0, arg_0), 3325i, Struct_1(0i), Struct_1(-3654i)), vec3<bool>(true, true, true), Struct_1(u_input.a.x), global0.a), 1u, Struct_3(Struct_2(vec3<u32>(0u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 15242u, arg_0), 2147483647i, Struct_1(global0.a), Struct_1(-1i)), vec3<bool>(true, true, false), Struct_1(global0.a), u_input.a.x)), arg_0, Struct_3(Struct_2(vec3<u32>(0u, arg_0, 35667u), vec4<u32>(arg_0, 1u, arg_0, arg_0), global0.a, Struct_1(1i), Struct_1(u_input.b)), vec3<bool>(false, true, true), Struct_1(u_input.a.x), global0.a)))), firstTrailingBit(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(33186u, arg_0), vec2<u32>(arg_0, 1u)))), func_2(reverseBits(~vec4<i32>(u_input.b, 5841i, -40498i, -1i) & ~vec4<i32>(u_input.b, u_input.b, global0.a, 0i)), func_2(abs(max(vec4<i32>(global0.a, -1i, -41852i, global0.a), vec4<i32>(11876i, global0.a, 1i, 36103i))), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, arg_0), vec4<u32>(0u, 4294967295u, arg_0, 0u), global0.a, Struct_1(global0.a), Struct_1(18445i)), vec3<bool>(false, true, true), Struct_1(-1i), _wgslsmith_add_i32(global0.a, global0.a)), countOneBits(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u)), func_2(max(vec4<i32>(-2147483647i, u_input.b, -38512i, u_input.a.x), vec4<i32>(-1i, -2147483647i, -1i, global0.a)), func_2(vec4<i32>(global0.a, u_input.b, 17001i, u_input.b), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, arg_0, arg_0), -19120i, Struct_1(u_input.b), Struct_1(u_input.b)), vec3<bool>(true, false, false), Struct_1(u_input.a.x), -1440i), arg_0, Struct_3(Struct_2(vec3<u32>(arg_0, 35007u, 80186u), vec4<u32>(arg_0, 4294967295u, 0u, 49546u), global0.a, Struct_1(-1i), Struct_1(u_input.a.x)), vec3<bool>(true, false, false), Struct_1(-1i), 21784i)), abs(1u), Struct_3(Struct_2(vec3<u32>(1u, arg_0, 15210u), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), 5864i, Struct_1(4915i), Struct_1(global0.a)), vec3<bool>(true, true, true), Struct_1(-1i), -2147483647i))), (select(1299u, arg_0, true) << ((18283u | arg_0) % 32u)) >> (firstTrailingBit(reverseBits(arg_0)) % 32u), func_2(-vec4<i32>(-35187i, 0i, global0.a, -61037i), Struct_3(Struct_2(vec3<u32>(arg_0, arg_0, 0u), vec4<u32>(76296u, 1u, 88526u, 1u), global0.a, Struct_1(-2147483647i), Struct_1(1i)), vec3<bool>(false, false, false), Struct_1(-1i), _wgslsmith_clamp_i32(global0.a, -3974i, -2147483647i)), countOneBits(~arg_0), func_2(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 12370i, global0.a)), Struct_3(Struct_2(vec3<u32>(19862u, 0u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 88599u), 0i, Struct_1(global0.a), Struct_1(-31507i)), vec3<bool>(true, true, false), Struct_1(global0.a), 2147483647i), ~23665u, Struct_3(Struct_2(vec3<u32>(0u, arg_0, 80734u), vec4<u32>(arg_0, arg_0, 14076u, arg_0), global0.a, Struct_1(-8550i), Struct_1(-27369i)), vec3<bool>(false, false, true), Struct_1(u_input.b), global0.a))))).a.d;
    var var_1 = arg_0;
    var var_2 = -734f;
    global1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~min(_wgslsmith_sub_u32(arg_0, 44756u), func_2(vec4<i32>(global0.a, 0i, u_input.b, 26574i), Struct_3(Struct_2(vec3<u32>(1u, 1u, 1u), vec4<u32>(arg_0, arg_0, arg_0, 53303u), global0.a, var_0, Struct_1(-2147483647i)), vec3<bool>(false, false, true), var_0, -5381i), arg_0, Struct_3(Struct_2(vec3<u32>(arg_0, 1u, arg_0), vec4<u32>(arg_0, 0u, arg_0, 11002u), var_0.a, Struct_1(2147483647i), Struct_1(var_0.a)), vec3<bool>(true, false, true), Struct_1(-26903i), -10888i)).a.b.x), 13774u), 4294967295u);
    var var_3 = 48018u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1145f, -1619f, 2241f, 178f), vec4<f32>(-514f, -874f, 444f, -781f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1749f, -1355f, -726f, -800f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 207f, -454f, -176f))))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1284f, -377f, false)), _wgslsmith_f_op_f32(1671f * -751f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-948f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(207f, -716f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-330f, -1669f, -194f, -688f))))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(reverseBits(select(func_4(_wgslsmith_add_i32(u_input.b, 2147483647i), func_2(vec4<i32>(global0.a, -2147483647i, 2147483647i, 50123i), Struct_3(Struct_2(vec3<u32>(53122u, 24559u, 0u), vec4<u32>(29484u, 46542u, 23215u, 51533u), -31293i, Struct_1(-2602i), Struct_1(u_input.b)), vec3<bool>(false, true, true), Struct_1(0i), -7258i), 4294967295u, Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 2925u), vec4<u32>(11368u, 0u, 3013u, 4294967295u), -33485i, Struct_1(15732i), Struct_1(u_input.b)), vec3<bool>(true, true, false), Struct_1(-28136i), u_input.a.x)), func_2(vec4<i32>(arg_0.x, -79900i, 14141i, global0.a), Struct_3(Struct_2(vec3<u32>(3941u, 4294967295u, 84785u), vec4<u32>(4294967295u, 4294967295u, 34106u, 0u), 5571i, Struct_1(-1i), Struct_1(u_input.a.x)), vec3<bool>(false, false, true), Struct_1(u_input.b), u_input.a.x), 64140u, Struct_3(Struct_2(vec3<u32>(42021u, 1u, 0u), vec4<u32>(1u, 106366u, 64749u, 4294967295u), 11025i, Struct_1(global0.a), Struct_1(u_input.a.x)), vec3<bool>(true, true, false), Struct_1(u_input.a.x), -46767i))), 58523u, -25195i != _wgslsmith_div_i32(global0.a, 2147483647i)))));
    global0 = Struct_1(abs(~global0.a));
    let var_1 = Struct_2(vec3<u32>(4294967295u, 1u, ~(~6703u)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~1u, 1206u), func_4(arg_0.x | 1i, Struct_3(Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(65987u, 44603u, 54030u, 0u), arg_0.x, Struct_1(arg_0.x), Struct_1(arg_0.x)), vec3<bool>(true, true, false), Struct_1(u_input.b), -16752i), func_2(vec4<i32>(arg_0.x, u_input.a.x, -40812i, global0.a), Struct_3(Struct_2(vec3<u32>(17693u, 1u, 0u), vec4<u32>(62161u, 4294967295u, 33278u, 1u), u_input.a.x, Struct_1(-2147483647i), Struct_1(u_input.a.x)), vec3<bool>(false, true, false), Struct_1(1i), global0.a), 81878u, Struct_3(Struct_2(vec3<u32>(34808u, 45705u, 4294967295u), vec4<u32>(105054u, 19349u, 35255u, 4294967295u), arg_0.x, Struct_1(arg_0.x), Struct_1(0i)), vec3<bool>(false, false, false), Struct_1(36565i), 47132i))), 1u, 1u), max(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 25161u, ~4908u, 34611u), ~(~vec4<u32>(0u, 35021u, 1u, 7167u)))), 2147483647i, Struct_1(-reverseBits(-18399i)), func_2(vec4<i32>(16586i, arg_0.x, arg_0.x, _wgslsmith_sub_i32(reverseBits(global0.a), i32(-1i) * -52185i)), func_2(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -54043i, u_input.b, -3359i), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 48253i)), arg_0, func_2(vec4<i32>(-13852i, arg_0.x, global0.a, -32296i), Struct_3(Struct_2(vec3<u32>(0u, 19771u, 0u), vec4<u32>(0u, 14788u, 0u, 89939u), u_input.b, Struct_1(-51541i), Struct_1(-24898i)), vec3<bool>(false, false, false), Struct_1(-2147483647i), global0.a), 27603u, Struct_3(Struct_2(vec3<u32>(1u, 25206u, 1u), vec4<u32>(0u, 49025u, 1u, 1u), -2147483647i, Struct_1(global0.a), Struct_1(-29481i)), vec3<bool>(false, false, true), Struct_1(-1i), -1i)).b.x), func_2(firstLeadingBit(arg_0), Struct_3(Struct_2(vec3<u32>(56093u, 0u, 0u), vec4<u32>(24819u, 10692u, 44848u, 4294967295u), u_input.a.x, Struct_1(u_input.b), Struct_1(5266i)), vec3<bool>(false, false, false), Struct_1(u_input.b), global0.a), _wgslsmith_div_u32(23333u, 4294967295u), Struct_3(Struct_2(vec3<u32>(0u, 271u, 1u), vec4<u32>(1u, 4294967295u, 26157u, 1u), global0.a, Struct_1(1i), Struct_1(-37891i)), vec3<bool>(true, true, true), Struct_1(arg_0.x), 2147483647i)), 111972u, Struct_3(func_2(arg_0, Struct_3(Struct_2(vec3<u32>(1u, 44819u, 4294967295u), vec4<u32>(15490u, 84411u, 29426u, 1u), -43124i, Struct_1(66687i), Struct_1(arg_0.x)), vec3<bool>(true, false, false), Struct_1(0i), global0.a), 23548u, Struct_3(Struct_2(vec3<u32>(0u, 3670u, 118137u), vec4<u32>(0u, 0u, 21894u, 64340u), 42967i, Struct_1(u_input.a.x), Struct_1(u_input.b)), vec3<bool>(false, true, true), Struct_1(global0.a), -1i)).a, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), func_2(vec4<i32>(-35749i, u_input.a.x, -2147483647i, global0.a), Struct_3(Struct_2(vec3<u32>(1u, 79861u, 0u), vec4<u32>(50145u, 1u, 26010u, 35965u), arg_0.x, Struct_1(1i), Struct_1(2147483647i)), vec3<bool>(false, true, true), Struct_1(-9755i), global0.a), 0u, Struct_3(Struct_2(vec3<u32>(19011u, 4294967295u, 4294967295u), vec4<u32>(0u, 63201u, 4294967295u, 31345u), 0i, Struct_1(global0.a), Struct_1(4799i)), vec3<bool>(true, false, false), Struct_1(arg_0.x), u_input.a.x)).a.d, _wgslsmith_dot_vec3_i32(arg_0.wzz, vec3<i32>(u_input.a.x, 2147483647i, arg_0.x)))), ~countOneBits(0u), func_2(_wgslsmith_mod_vec4_i32(arg_0, arg_0) | reverseBits(vec4<i32>(u_input.a.x, 2147483647i, arg_0.x, global0.a)), func_2(-vec4<i32>(arg_0.x, arg_0.x, global0.a, arg_0.x), Struct_3(Struct_2(vec3<u32>(2556u, 54003u, 0u), vec4<u32>(4294967295u, 42400u, 20376u, 1u), global0.a, Struct_1(-2147483647i), Struct_1(u_input.b)), vec3<bool>(true, false, true), Struct_1(29471i), -1i), 0u, func_2(vec4<i32>(-56749i, arg_0.x, -2147483647i, -1i), Struct_3(Struct_2(vec3<u32>(44273u, 5073u, 73787u), vec4<u32>(1u, 20744u, 7527u, 1u), 17123i, Struct_1(u_input.a.x), Struct_1(1i)), vec3<bool>(true, false, false), Struct_1(-25269i), arg_0.x), 134465u, Struct_3(Struct_2(vec3<u32>(69830u, 10867u, 41020u), vec4<u32>(0u, 0u, 53410u, 0u), -9186i, Struct_1(arg_0.x), Struct_1(0i)), vec3<bool>(false, true, true), Struct_1(u_input.a.x), 1i))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(82593u, 46337u), vec2<u32>(1u, 70997u)), 1u), func_2(vec4<i32>(u_input.b, -5884i, -48721i, u_input.b) & arg_0, Struct_3(Struct_2(vec3<u32>(0u, 36922u, 0u), vec4<u32>(4294967295u, 4294967295u, 15212u, 121059u), 0i, Struct_1(arg_0.x), Struct_1(u_input.b)), vec3<bool>(true, false, true), Struct_1(arg_0.x), u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(96612u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 32510u, 35323u, 4294967295u)), Struct_3(Struct_2(vec3<u32>(80777u, 4025u, 7990u), vec4<u32>(9309u, 4294967295u, 41164u, 56717u), u_input.a.x, Struct_1(-1i), Struct_1(global0.a)), vec3<bool>(true, false, false), Struct_1(u_input.b), 0i)))).c);
    global0 = func_2(countOneBits(arg_0) ^ max(min(firstTrailingBit(vec4<i32>(u_input.b, 16857i, -2147483647i, var_1.e.a)), vec4<i32>(-19249i, var_1.d.a, global0.a, -14046i)), vec4<i32>(-19369i, var_1.c, -6518i, -6438i) & arg_0), func_2(arg_0, Struct_3(Struct_2(~vec3<u32>(26928u, var_1.b.x, var_1.b.x), select(var_1.b, vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<bool>(false, false, false, false)), u_input.b, Struct_1(var_1.d.a), func_2(vec4<i32>(-47774i, global0.a, u_input.b, global0.a), Struct_3(Struct_2(var_1.a, vec4<u32>(var_1.b.x, var_1.b.x, 17921u, var_1.b.x), 0i, Struct_1(global0.a), Struct_1(var_1.e.a)), vec3<bool>(false, false, false), var_1.e, global0.a), var_1.b.x, Struct_3(var_1, vec3<bool>(true, true, true), var_1.d, var_1.d.a)).a.d), func_2(~vec4<i32>(u_input.b, u_input.b, var_1.d.a, -22037i), func_2(vec4<i32>(1i, -1i, 2147483647i, 16863i), Struct_3(Struct_2(var_1.a, var_1.b, global0.a, var_1.d, Struct_1(0i)), vec3<bool>(false, false, true), Struct_1(u_input.a.x), 1i), var_1.a.x, Struct_3(Struct_2(vec3<u32>(var_1.b.x, 0u, var_1.b.x), var_1.b, global0.a, var_1.e, Struct_1(67735i)), vec3<bool>(false, true, false), Struct_1(2147483647i), var_1.d.a)), 11993u, Struct_3(Struct_2(var_1.a, vec4<u32>(var_1.b.x, var_1.a.x, var_1.a.x, 4294967295u), var_1.d.a, var_1.e, var_1.d), vec3<bool>(true, false, false), Struct_1(arg_0.x), var_1.c)).b, var_1.d, -36170i), firstLeadingBit(var_1.b.x), func_2(arg_0, Struct_3(var_1, vec3<bool>(true, true, true), func_2(arg_0, Struct_3(var_1, vec3<bool>(true, true, false), var_1.d, u_input.b), var_1.b.x, Struct_3(Struct_2(vec3<u32>(var_1.a.x, var_1.a.x, 1u), var_1.b, -1i, Struct_1(arg_0.x), var_1.d), vec3<bool>(false, true, true), Struct_1(global0.a), -33137i)).a.e, -1i), 0u, func_2(vec4<i32>(arg_0.x, var_1.c, 13688i, var_1.d.a) << (var_1.b % vec4<u32>(32u)), func_2(arg_0, Struct_3(Struct_2(var_1.b.zyz, vec4<u32>(var_1.a.x, 37496u, 4294967295u, var_1.a.x), var_1.c, var_1.e, Struct_1(-5912i)), vec3<bool>(true, false, true), Struct_1(38186i), 2147483647i), 23005u, Struct_3(var_1, vec3<bool>(true, false, false), var_1.d, global0.a)), 74506u, Struct_3(var_1, vec3<bool>(true, true, true), var_1.e, u_input.a.x)))), firstLeadingBit(var_1.b.x), func_2(abs(~(~arg_0)), Struct_3(Struct_2(select(var_1.b.xxy, var_1.a, vec3<bool>(false, true, false)), var_1.b, global0.a, func_2(vec4<i32>(-41379i, var_1.e.a, 2147483647i, 22395i), Struct_3(var_1, vec3<bool>(true, true, false), Struct_1(var_1.d.a), -54048i), 6187u, Struct_3(var_1, vec3<bool>(false, false, false), var_1.d, u_input.a.x)).a.e, Struct_1(1i)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), func_2(-vec4<i32>(-6886i, 22830i, -2147483647i, 9598i), func_2(vec4<i32>(1i, var_1.d.a, var_1.c, arg_0.x), Struct_3(Struct_2(vec3<u32>(var_1.b.x, 1u, var_1.b.x), var_1.b, 53i, Struct_1(23594i), Struct_1(var_1.d.a)), vec3<bool>(false, true, true), Struct_1(u_input.a.x), global0.a), 0u, Struct_3(Struct_2(vec3<u32>(var_1.a.x, 0u, var_1.b.x), var_1.b, arg_0.x, var_1.e, var_1.d), vec3<bool>(false, false, true), Struct_1(64210i), global0.a)), ~4294967295u, Struct_3(var_1, vec3<bool>(true, false, false), Struct_1(arg_0.x), -675i)).a.e, u_input.a.x << (func_2(arg_0, Struct_3(var_1, vec3<bool>(false, false, true), Struct_1(arg_0.x), -19573i), var_1.a.x, Struct_3(Struct_2(var_1.a, var_1.b, u_input.a.x, Struct_1(2147483647i), var_1.e), vec3<bool>(true, true, true), var_1.d, -8117i)).a.a.x % 32u)), ~(~(~var_1.a.x)), Struct_3(Struct_2(vec3<u32>(71798u, var_1.a.x, 0u), var_1.b, arg_0.x, func_2(vec4<i32>(arg_0.x, u_input.a.x, 3158i, arg_0.x), Struct_3(Struct_2(vec3<u32>(0u, var_1.a.x, 0u), var_1.b, var_1.d.a, Struct_1(55503i), var_1.e), vec3<bool>(true, false, true), Struct_1(0i), global0.a), 0u, Struct_3(var_1, vec3<bool>(false, true, true), Struct_1(arg_0.x), arg_0.x)).c, Struct_1(-35874i)), vec3<bool>(true, true, true), var_1.e, ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)))).c;
    global1 = ~(~(countOneBits(_wgslsmith_sub_u32(1u, var_1.b.x)) << (45165u % 32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(~firstLeadingBit(abs(vec4<i32>(u_input.b, u_input.a.x, 3685i, global0.a)))), vec3<bool>(true, true, true), Struct_1(_wgslsmith_mod_i32(~23918i, _wgslsmith_dot_vec3_i32(vec3<i32>(12620i, u_input.a.x, u_input.a.x), vec3<i32>(-28369i, u_input.b, u_input.a.x)) ^ _wgslsmith_add_i32(22433i, -31442i))), ~(-18917i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f * -196f) - _wgslsmith_f_op_f32(f32(-1f) * -816f)))) + _wgslsmith_f_op_f32(trunc(-729f)));
    var var_2 = !var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(func_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(-3546i, -19682i, 0i, -64239i), vec4<i32>(-1i, 34437i, -2147483647i, global0.a)), var_0, var_0.a.a.x, Struct_3(Struct_2(var_0.a.a, var_0.a.b, global0.a, Struct_1(global0.a), var_0.c), vec3<bool>(var_2.x, var_0.b.x, true), Struct_1(-11098i), -global0.a)).a.b.xw, ~firstLeadingBit(max(vec2<u32>(4294967295u, 74878u), vec2<u32>(4294967295u, var_0.a.b.x)))), ~var_0.a.b);
}

