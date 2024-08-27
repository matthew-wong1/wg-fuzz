struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~13908i), ~firstLeadingBit(0i)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(arg_1.b.a, 0i) & vec2<i32>(-21985i, u_input.d), vec2<i32>(-5980i, arg_1.b.a)), ~reverseBits(vec2<i32>(-77181i, u_input.d)), -vec2<i32>(-43820i, 26985i)), ~(~vec2<i32>(-1i, u_input.d)) ^ abs(vec2<i32>(arg_1.c.a, 45151i))));
    let var_1 = !arg_1.b.c.ywy;
    let var_2 = select(vec2<u32>(max(_wgslsmith_add_u32(arg_2.a >> (27733u % 32u), arg_1.d.c.x | u_input.a), 1194u & arg_1.c.b.c.x), _wgslsmith_mult_u32(~79671u | select(u_input.b.x, arg_1.d.c.x, true), min(arg_2.a >> (arg_2.a % 32u), abs(arg_1.c.b.c.x)))), u_input.b, ~(-39703i << (arg_1.c.b.c.x % 32u)) <= 30103i);
    let var_3 = Struct_3(vec3<bool>(arg_1.c.c.x, all(arg_1.c.c) & !(arg_1.d.a.x & true), arg_1.a.x), arg_1.b, arg_1.b, Struct_1(!var_1.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, 1164f, arg_0.x) * vec3<f32>(arg_0.x, arg_1.d.b.x, arg_1.c.b.b.x)) - arg_1.c.b.b) + vec3<f32>(_wgslsmith_f_op_f32(sign(-989f)), _wgslsmith_div_f32(arg_0.x, 628f), _wgslsmith_div_f32(arg_0.x, -510f))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(63779u, arg_1.b.b.c.x), ~u_input.a, _wgslsmith_add_u32(var_2.x, arg_2.a), 0u), arg_1.b.b.c)));
    let var_4 = arg_1.d.c;
    return _wgslsmith_mod_vec4_u32(abs(vec4<u32>(_wgslsmith_mod_u32(~var_3.c.b.c.x, 1u >> (var_4.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.b.c.x, var_2.x, 0u), ~vec3<u32>(u_input.b.x, var_4.x, var_4.x)), max(reverseBits(arg_1.c.b.c.x), arg_1.d.c.x), max(abs(1u), ~4294967295u))), ~((select(var_3.b.b.c, var_4, arg_1.b.c) & ~var_3.b.b.c) & (arg_1.b.b.c << (var_3.d.c % vec4<u32>(32u)))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 54731u, 0u, u_input.b.x)) << (func_3(vec3<f32>(arg_0, arg_0, arg_0), Struct_3(vec3<bool>(true, false, true), Struct_2(u_input.d, Struct_1(vec2<bool>(false, false), vec3<f32>(arg_0, arg_0, 289f), vec4<u32>(u_input.a, u_input.b.x, u_input.c, u_input.c)), vec4<bool>(true, false, false, false), vec4<f32>(303f, -641f, 2083f, arg_0)), Struct_2(-22614i, Struct_1(vec2<bool>(true, false), vec3<f32>(arg_0, arg_0, arg_0), vec4<u32>(85640u, u_input.b.x, u_input.c, u_input.a)), vec4<bool>(false, true, false, true), vec4<f32>(arg_0, arg_0, arg_0, 673f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-1452f, -769f, arg_0), vec4<u32>(u_input.b.x, 44980u, u_input.a, 1u))), Struct_4(u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, u_input.c, 555u, 32640u)) >= (4294967295u & u_input.b.x));
    let var_1 = Struct_3(!select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), true || var_0.x), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), var_0.x | var_0.x)), Struct_2(4034i, Struct_1(!vec2<bool>(false, var_0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1073f, 757f, -1509f), vec3<f32>(arg_0, 604f, -2983f))), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 8989u, 4294967295u), vec4<u32>(0u, 18759u, 49179u, 1u)), u_input.a | u_input.b.x, 27806u)), !vec4<bool>(0u == u_input.b.x, var_0.x, false, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(300f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(-636f, 1000f)), _wgslsmith_div_f32(-1000f, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 905f, 571f, _wgslsmith_f_op_f32(-899f + arg_0)))), Struct_2(~(-u_input.d >> (_wgslsmith_mod_u32(u_input.a, 47529u) % 32u)), Struct_1(!(!var_0.zy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-940f, -1283f, -591f) - vec3<f32>(arg_0, -932f, -539f))), countOneBits(vec4<u32>(u_input.c, 41381u, 0u, 14767u) | vec4<u32>(u_input.a, u_input.c, 5134u, 4294967295u))), !select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, false, var_0.x), true), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -306f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(sign(1450f))))), Struct_1(select(vec2<bool>(true, arg_0 < -989f), select(var_0.zy, vec2<bool>(var_0.x, var_0.x), select(var_0.x, true, false)), !var_0.zz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -234f, arg_0) - vec3<f32>(-587f, 409f, -351f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 644f)))), _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, u_input.a)), vec4<u32>(~u_input.c, _wgslsmith_mod_u32(0u, 1u), ~40110u, u_input.b.x))));
    var var_2 = 11615u;
    var var_3 = Struct_1(!select(select(!var_0.xz, select(var_0.yx, vec2<bool>(false, true), vec2<bool>(false, false)), false), vec2<bool>(true, false), select(vec2<bool>(var_0.x, false), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, true)), !vec2<bool>(true, var_1.b.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.c.b.b))), _wgslsmith_clamp_vec4_u32(~var_1.b.b.c, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.c.b.c, firstLeadingBit(vec4<u32>(0u, u_input.b.x, var_1.d.c.x, u_input.b.x))), ~(~var_1.c.b.c)), abs(var_1.c.b.c)));
    var_3 = Struct_1(vec2<bool>(false, all(select(var_1.b.c, var_1.b.c, var_1.a.x)) | var_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(exp2(arg_0))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - var_1.d.b.x), -457f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-201f * _wgslsmith_f_op_f32(min(-1771f, arg_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0)))))), arg_0), func_3(vec3<f32>(1044f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_3.b.x, 2439f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-arg_0)))), Struct_3(var_1.c.c.zyx, var_1.c, Struct_2(max(2147483647i, -53146i), Struct_1(var_0.zz, var_3.b, var_3.c), vec4<bool>(true, var_0.x, true, true), _wgslsmith_f_op_vec4_f32(-var_1.b.d)), var_1.b.b), Struct_4(~u_input.c)));
    return Struct_3(select(!select(var_1.a, vec3<bool>(true, var_0.x, var_1.c.c.x), !vec3<bool>(var_1.b.c.x, var_1.a.x, var_3.a.x)), vec3<bool>(any(var_1.d.a), true, all(!vec4<bool>(var_1.d.a.x, var_3.a.x, false, var_3.a.x))), var_1.b.c.ywz), var_1.c, var_1.b, Struct_1(!vec2<bool>(var_1.c.b.a.x, true && var_3.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1724f, -1333f, true))), _wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(floor(var_1.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -800f)), ~(~var_3.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    let var_0 = !arg_2.b.b.a;
    let var_1 = arg_2.c;
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.b.c ^ vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(arg_2.b.b.c.x, 1u, var_1.b.c.x, ~1u)), vec4<u32>(67024u, ~var_1.b.c.x, abs(~u_input.c), 4294967295u)), countOneBits(~select(var_1.b.c, arg_2.b.b.c, arg_2.a.x)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_1.a, arg_1.a, var_1.b.c.x), vec4<u32>(arg_1.a, arg_2.b.b.c.x, 51649u, 0u) >> (var_1.b.c % vec4<u32>(32u))));
    let var_3 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) - _wgslsmith_f_op_f32(-arg_3))).c.c.wxw, Struct_2(1i, Struct_1(vec2<bool>(func_2(arg_3).a.x, !arg_2.d.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d.yww, vec3<f32>(arg_2.b.d.x, -1698f, arg_3), false))), arg_2.c.b.c), vec4<bool>(arg_2.a.x || any(vec2<bool>(var_0.x, var_0.x)), !(!arg_2.c.b.a.x), true, any(var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.d.x, 1518f, arg_2.b.d.x, arg_3)))), Struct_2(max(select(arg_2.c.a, _wgslsmith_sub_i32(76920i, 2147483647i), any(arg_2.c.c)), arg_0.x), func_2(arg_2.d.b.x).c.b, vec4<bool>(false, any(func_2(arg_3).b.c.wxw), 13515u == ~arg_2.c.b.c.x, true), vec4<f32>(-622f, 944f, _wgslsmith_f_op_f32(step(2750f, _wgslsmith_f_op_f32(629f + -2651f))), _wgslsmith_f_op_f32(ceil(var_1.d.x)))), Struct_1(vec2<bool>(true, all(vec4<bool>(var_0.x, true, arg_2.a.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-510f, -1000f, arg_2.b.b.b.x), arg_2.c.d.yxy, arg_2.d.a.x)), vec3<f32>(2726f, 347f, 977f))), vec4<u32>(var_2.x, func_2(2211f).b.b.c.x, 1u, arg_1.a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -284f, 824f)))) + arg_2.b.d.yxz)));
    return Struct_3(!(!var_1.c.wwz), var_1, Struct_2(_wgslsmith_dot_vec4_i32(arg_0, arg_0), Struct_1(select(vec2<bool>(true, arg_2.a.x), !vec2<bool>(var_1.b.a.x, true), var_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_3.b.d.wzz * arg_2.d.b))), arg_2.c.b.c), select(var_1.c, !vec4<bool>(var_1.b.a.x, true, true, arg_2.a.x), !func_2(arg_2.c.d.x).d.a.x), vec4<f32>(_wgslsmith_div_f32(886f, _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(floor(-1009f)), 599f, func_2(-1466f).c.b.b.x)), arg_2.d);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.d, u_input.d, -63256i), vec4<i32>(u_input.d, 13682i, u_input.d, u_input.d))), -vec4<i32>(1517i, 45426i, u_input.d, u_input.d)), Struct_4(~u_input.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1425f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f + 1616f)))));
    let var_1 = Struct_1(vec2<bool>(!all(var_0.b.c.xyz), any(func_4(vec4<i32>(var_0.c.a, 1i, -2493i, 1i), Struct_4(u_input.b.x), var_0, 1434f).b.b.a) && any(select(vec4<bool>(false, var_0.d.a.x, var_0.c.b.a.x, var_0.c.b.a.x), var_0.b.c, true))), var_0.c.b.b, _wgslsmith_sub_vec4_u32(~(~var_0.b.b.c), var_0.c.b.c));
    let var_2 = u_input.b;
    return Struct_2(u_input.d, Struct_1(!vec2<bool>(true, -1691f >= var_0.b.b.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, var_0.c.d.x, 534f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, -291f, var_1.b.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b.b) - func_2(-285f).d.b)), var_0.b.b.c), var_0.b.c, var_0.c.d);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(max(_wgslsmith_add_i32(-(~16959i), 1i), 35880i), func_4(vec4<i32>(arg_2.a, -u_input.d, _wgslsmith_div_i32(arg_2.a, _wgslsmith_clamp_i32(arg_2.a, 2147483647i, -31041i)), -2147483647i), Struct_4(~(~arg_3.c.x)), func_4(-vec4<i32>(0i, u_input.d, 0i, 23161i), Struct_4(reverseBits(arg_2.b.c.x)), func_2(_wgslsmith_f_op_f32(arg_2.b.b.x * arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(632f, 377f, arg_3.a.x)), -1513f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(max(1000f, -2761f)))))).b.b, select(vec4<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -907f)).d.a.x, all(select(vec3<bool>(true, arg_3.a.x, false), vec3<bool>(false, false, arg_2.c.x), arg_2.c.zxx)), 1i < (arg_2.a << (arg_1 % 32u)), func_4(-vec4<i32>(37874i, 4668i, 14695i, 3904i), Struct_4(25696u), func_4(vec4<i32>(u_input.d, -1i, u_input.d, arg_2.a), Struct_4(0u), Struct_3(arg_2.c.yyy, Struct_2(arg_2.a, arg_2.b, vec4<bool>(true, arg_3.a.x, true, arg_2.b.a.x), vec4<f32>(arg_3.b.x, -1574f, arg_2.b.b.x, -1259f)), arg_2, Struct_1(vec2<bool>(true, true), vec3<f32>(-1150f, 1000f, 516f), vec4<u32>(61283u, u_input.b.x, 11173u, 21565u))), arg_2.d.x), _wgslsmith_f_op_f32(step(1669f, arg_2.b.b.x))).b.c.x), func_2(-1000f).b.c, false), arg_2.d);
    let var_1 = _wgslsmith_add_i32(arg_2.a, _wgslsmith_dot_vec3_i32(max(select(vec3<i32>(u_input.d, 22185i, -19187i), vec3<i32>(arg_2.a, var_0.a, 1i) >> (vec3<u32>(arg_3.c.x, arg_3.c.x, u_input.a) % vec3<u32>(32u)), !vec3<bool>(arg_2.c.x, true, arg_3.a.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(u_input.d, arg_2.a, u_input.d))), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.a, arg_2.a), -vec3<i32>(-1681i, 7098i, var_0.a))));
    var_0 = arg_2;
    let var_2 = false;
    var_0 = func_2(-688f).c;
    return func_4(~vec4<i32>(45259i, ~(~(-13431i)), 2147483647i, (-20393i & arg_2.a) << (4294967295u % 32u)), Struct_4(~arg_1), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, 27790i, arg_2.a, var_0.a) & vec4<i32>(u_input.d, -2147483647i, var_0.a, 0i), -vec4<i32>(14554i, var_1, -63031i, u_input.d), ~vec4<i32>(-14308i, var_1, var_1, var_0.a)) >> (vec4<u32>(min(arg_3.c.x, arg_3.c.x), 17931u, func_3(var_0.d.xxw, Struct_3(vec3<bool>(arg_3.a.x, true, true), Struct_2(0i, arg_3, vec4<bool>(true, true, arg_2.b.a.x, var_0.c.x), vec4<f32>(arg_3.b.x, -240f, var_0.b.b.x, 1373f)), arg_2, arg_2.b), Struct_4(1u)).x, select(32493u, 9408u, arg_2.b.a.x)) % vec4<u32>(32u)), Struct_4(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21032u, arg_1, arg_2.b.c.x, arg_2.b.c.x), var_0.b.c), 1u)), Struct_3(vec3<bool>(true, arg_2.c.x, true), arg_2, Struct_2(i32(-1i) * -1i, func_4(vec4<i32>(u_input.d, var_1, var_0.a, u_input.d), Struct_4(13287u), Struct_3(vec3<bool>(var_0.b.a.x, var_2, var_2), arg_2, arg_2, var_0.b), arg_0.x).d, arg_2.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1278f, arg_3.b.x, var_0.d.x, arg_3.b.x) - vec4<f32>(-1098f, 351f, var_0.b.b.x, arg_2.d.x))), Struct_1(arg_2.c.zx, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b.x, arg_0.x, arg_0.x), arg_2.b.b, vec3<bool>(true, false, var_0.b.a.x))), vec4<u32>(1u, arg_2.b.c.x, arg_1, 1u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -349f)))), arg_2.b.b.x);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(vec3<bool>(func_4(~vec4<i32>(arg_3.a, -24493i, u_input.d, 2147483647i), Struct_4(u_input.c), Struct_3(arg_3.c.zxy, Struct_2(-1i, arg_3.b, arg_3.c, arg_3.d), Struct_2(1i, arg_3.b, arg_3.c, arg_1.c.d), arg_3.b), _wgslsmith_f_op_f32(-806f * -435f)).c.a != -2147483647i, !(all(vec4<bool>(false, false, arg_3.c.x, arg_3.c.x)) && true), true), func_2(arg_1.b.d.x).b, Struct_2(abs(-1i), arg_3.b, !func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b.b.x, arg_2, arg_3.d.x)), arg_1.d.c.x << (1u % 32u), arg_1.b, Struct_1(vec2<bool>(arg_1.d.a.x, arg_1.b.c.x), arg_1.d.b, arg_1.c.b.c)).c.c, arg_3.d), Struct_1(arg_1.c.c.xz, func_4(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.b.a, arg_3.a, arg_3.a, arg_1.c.a), vec4<i32>(0i, 2147483647i, 2147483647i, -1i)), Struct_4(select(arg_3.b.c.x, 0u, arg_1.a.x)), arg_1, _wgslsmith_f_op_f32(arg_3.d.x - _wgslsmith_f_op_f32(-arg_3.b.b.x))).c.d.wyy, arg_3.b.c));
    var var_1 = Struct_3(!vec3<bool>(true, var_0.c.b.c.x < abs(4294967295u), all(vec4<bool>(false, arg_3.b.a.x, arg_1.d.a.x, var_0.c.b.a.x))), arg_1.c, arg_3, func_2(_wgslsmith_f_op_f32(-func_5(arg_1.c.d.xwy, 1u, func_1(), func_4(vec4<i32>(57150i, u_input.d, arg_1.c.a, arg_3.a), Struct_4(6417u), Struct_3(vec3<bool>(true, var_0.a.x, var_0.b.c.x), arg_1.b, Struct_2(arg_3.a, Struct_1(var_0.b.b.a, vec3<f32>(arg_3.b.b.x, arg_2, -266f), var_0.c.b.c), arg_3.c, arg_3.d), arg_1.b.b), -643f).b.b).b.d.x)).d);
    var var_2 = Struct_3(!vec3<bool>(func_2(-1843f).a.x, false, true), var_1.b, var_1.b, var_1.d);
    var_2 = arg_1;
    var_1 = Struct_3(arg_1.c.c.zwx, Struct_2(_wgslsmith_mult_i32(-1i, var_2.b.a), func_2(-349f).c.b, !arg_3.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b.x, var_2.b.d.x, var_0.c.d.x, -1624f))))), Struct_2(u_input.d, var_0.b.b, !var_2.c.c, _wgslsmith_f_op_vec4_f32(trunc(var_0.c.d))), var_1.b.b);
    return func_2(_wgslsmith_f_op_f32(var_0.c.d.x * -1337f)).c;
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = -min(~vec3<i32>(max(-14327i, -56014i), ~arg_0.a, 1i), -firstLeadingBit(vec3<i32>(2147483647i, u_input.d, -243i)));
    var_1 = select(vec3<i32>(var_1.x, arg_0.a, u_input.d), ~(~(vec3<i32>(-37662i, 1i, arg_0.a) << (arg_0.b.c.xyx % vec3<u32>(32u)))), !var_0.b.a.x);
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, 1000f, arg_0.d.x) * arg_0.d.xwy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0.d.x, 932f), vec3<f32>(537f, var_0.d.x, var_0.d.x), vec3<bool>(var_0.b.a.x, false, true))))) + arg_0.b.b)), var_0.b.c.x, Struct_2(-2007i, arg_0.b, select(arg_0.c, var_0.c, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.b.b.x, _wgslsmith_f_op_f32(var_0.d.x - var_0.b.b.x), var_0.b.b.x))), func_1().b).d.b.x;
    return func_4(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, -55945i, 15677i, u_input.d)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-34039i, arg_0.a, var_1.x, 10316i), vec4<i32>(var_1.x, var_0.a, 2147483647i, u_input.d)), vec4<i32>(u_input.d, 11876i, 1i, u_input.d))), Struct_4(~(~(~4294967295u))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)), _wgslsmith_f_op_f32(var_2 + -1000f), var_0.b.b.x), countOneBits(4294967295u), arg_0, func_4(vec4<i32>(8354i, arg_0.a, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6348i, var_0.a, -2147483647i, -56567i), vec4<i32>(var_1.x, arg_0.a, u_input.d, -37643i))), Struct_4(5328u), func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(217f, var_2, var_2), vec3<f32>(arg_0.d.x, 541f, arg_0.b.b.x), var_0.c.zwy)), u_input.b.x, Struct_2(var_1.x, arg_0.b, vec4<bool>(true, var_0.c.x, false, arg_0.c.x), arg_0.d), Struct_1(vec2<bool>(true, false), vec3<f32>(307f, 922f, -836f), var_0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))).c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(func_1().d.x + _wgslsmith_f_op_f32(-1265f + arg_0.b.b.x))))).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(abs(_wgslsmith_add_u32(u_input.b.x, 20243u)), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, 267f, -1778f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1846f, 1000f, 2704f) - vec3<f32>(-216f, 144f, -793f))), ~4294967295u, func_1(), Struct_1(func_4(vec4<i32>(u_input.d, u_input.d, u_input.d, -46883i), Struct_4(4294967295u), Struct_3(vec3<bool>(true, true, false), Struct_2(26321i, Struct_1(vec2<bool>(false, true), vec3<f32>(137f, 865f, 548f), vec4<u32>(u_input.c, 1u, u_input.b.x, 69444u)), vec4<bool>(false, false, true, false), vec4<f32>(760f, 883f, 108f, 301f)), Struct_2(u_input.d, Struct_1(vec2<bool>(false, true), vec3<f32>(996f, -2295f, -1259f), vec4<u32>(u_input.b.x, u_input.a, 1u, 1u)), vec4<bool>(true, true, false, false), vec4<f32>(-2804f, 229f, -911f, 766f)), Struct_1(vec2<bool>(true, false), vec3<f32>(397f, 816f, 836f), vec4<u32>(66286u, 1u, u_input.b.x, u_input.a))), -1012f).d.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1501f, 796f, 2281f)), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + 152f)))), Struct_2(func_4(vec4<i32>(-30524i, -1i, u_input.d, u_input.d), Struct_4(u_input.a), func_5(vec3<f32>(-1000f, -134f, 647f), u_input.b.x, Struct_2(0i, Struct_1(vec2<bool>(true, true), vec3<f32>(-2431f, 1000f, 2534f), vec4<u32>(31544u, 4294967295u, u_input.c, u_input.a)), vec4<bool>(true, true, false, false), vec4<f32>(355f, -536f, -1115f, 260f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-454f, -873f, 1045f), vec4<u32>(1u, 2947u, u_input.b.x, 33629u))), _wgslsmith_div_f32(706f, -2040f)).c.a, func_4(vec4<i32>(u_input.d, 7001i, u_input.d, u_input.d) & vec4<i32>(-1110i, u_input.d, u_input.d, u_input.d), Struct_4(59858u), Struct_3(vec3<bool>(true, false, false), Struct_2(23285i, Struct_1(vec2<bool>(true, true), vec3<f32>(-1614f, -524f, -1323f), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.b.x)), vec4<bool>(true, false, false, false), vec4<f32>(-188f, -667f, 213f, -1042f)), Struct_2(-5490i, Struct_1(vec2<bool>(false, false), vec3<f32>(280f, 1000f, 163f), vec4<u32>(1u, 23852u, 1u, 51318u)), vec4<bool>(false, true, true, false), vec4<f32>(882f, -660f, -1401f, -822f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-360f, 731f, -1984f), vec4<u32>(u_input.a, 95230u, 0u, u_input.c))), func_4(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d), Struct_4(u_input.a), Struct_3(vec3<bool>(true, false, false), Struct_2(u_input.d, Struct_1(vec2<bool>(true, false), vec3<f32>(-320f, -362f, -2143f), vec4<u32>(1u, 35810u, 1u, 0u)), vec4<bool>(true, false, false, false), vec4<f32>(451f, 391f, -1751f, -834f)), Struct_2(u_input.d, Struct_1(vec2<bool>(false, false), vec3<f32>(-763f, -119f, -1000f), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.a)), vec4<bool>(true, true, false, false), vec4<f32>(-2156f, -295f, 353f, 1000f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-522f, 949f, -193f), vec4<u32>(1u, 11622u, u_input.a, 16438u))), 701f).b.d.x).d, select(func_5(vec3<f32>(-256f, -1058f, 118f), 137726u, Struct_2(2147483647i, Struct_1(vec2<bool>(false, false), vec3<f32>(740f, -471f, 661f), vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.a)), vec4<bool>(false, false, true, false), vec4<f32>(-340f, -288f, 248f, 874f)), Struct_1(vec2<bool>(true, false), vec3<f32>(488f, 768f, -629f), vec4<u32>(u_input.a, 36877u, 18231u, u_input.a))).b.c, vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_div_f32(-494f, -550f), func_1().b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -450f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(func_6(49912u, func_4(vec4<i32>(1190i, u_input.d, 0i, 5310i), Struct_4(4294967295u), Struct_3(vec3<bool>(false, true, var_0.a.x), Struct_2(1i, var_0, vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<f32>(1269f, -1562f, var_0.b.x, var_0.b.x)), Struct_2(u_input.d, Struct_1(var_0.a, vec3<f32>(var_0.b.x, -451f, var_0.b.x), vec4<u32>(0u, u_input.c, var_0.c.x, 18421u)), vec4<bool>(false, var_0.a.x, true, false), vec4<f32>(var_0.b.x, var_0.b.x, 1180f, var_0.b.x)), Struct_1(var_0.a, vec3<f32>(var_0.b.x, 863f, 762f), vec4<u32>(0u, 4294967295u, u_input.b.x, var_0.c.x))), -363f), _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), func_1()).d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(2592f - 415f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x)))), var_0.b.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1112f, -543f, false)), 1f))), _wgslsmith_div_f32(1169f, _wgslsmith_f_op_f32(f32(-1f) * -571f)));
    let var_2 = reverseBits(func_2(-242f).c.b.c);
    var var_3 = 159f;
    var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -abs(-vec2<i32>(u_input.d, u_input.d)), var_2.zww);
}

