struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(25559u, 24986u, 1u), vec3<u32>(1697u, 35735u, 31110u), vec3<u32>(64134u, 20047u, 5151u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(29773u, 0u, 0u), vec3<u32>(4294967295u, 13287u, 4294967295u), vec3<u32>(1u, 29399u, 34780u), vec3<u32>(1u, 67615u, 4294967295u), vec3<u32>(5706u, 208u, 1u));

var<private> global2: bool = true;

var<private> global3: i32 = -5679i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = select(_wgslsmith_mod_vec2_i32(u_input.d, u_input.c.zx), ~(-u_input.d), select(!vec2<bool>(!arg_1.x, true), arg_1.xz, true));
    let var_1 = -955f;
    return !vec4<bool>(all(arg_1), u_input.c.x < (abs(u_input.a) ^ -u_input.d.x), !(1u < min(u_input.b, 77949u)), arg_1.x);
}

fn func_3() -> f32 {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_clamp_i32(-2147483647i, -17221i, u_input.c.x) >= max(-7317i, -2147483647i)));
    var var_1 = Struct_4(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(318f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec3<bool>(func_2(-294f, var_0.yxz).x, var_0.x, false), !(!func_2(2014f, vec3<bool>(false, var_0.x, var_0.x)).yyx), !var_0.zzz), Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~4294967295u), select(u_input.b, 28043u, var_0.x) << (reverseBits(24221u) % 32u)), 9u)], 4294967295u & _wgslsmith_add_u32(~u_input.b, ~4294967295u), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1494f, -395f, 377f, -749f), vec4<f32>(-1131f, -661f, -429f, -512f)), ~u_input.b, all(var_0.yw)), 42461i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -34206i, 32192i, u_input.d.x), vec4<i32>(2147483647i, u_input.d.x, 0i, 28042i)))));
    var_1 = Struct_4(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f))), select(var_0.wzz, vec3<bool>(-16062i <= u_input.a, true, true), select(var_0.yxx, vec3<bool>(false, !var_1.c.x, true), true)), Struct_3(global1[_wgslsmith_index_u32(~(~u_input.b), 9u)], 1592u, Struct_2(var_1.d.c.a, 1i)));
    let var_2 = Struct_3(~firstTrailingBit(abs(vec3<u32>(4294967295u, 0u, 1u))) << (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 70008u), vec3<u32>(29131u, u_input.b, 11895u)), _wgslsmith_mod_vec3_u32(vec3<u32>(27727u, 1u, 1u), var_1.d.a) & _wgslsmith_mod_vec3_u32(var_1.d.a, vec3<u32>(var_1.d.b, var_1.d.b, var_1.d.c.a.b))) % vec3<u32>(32u)), u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d.c.a.a) * vec4<f32>(-290f, -612f, var_1.b, -1105f)), 1u, var_1.d.c.a.c), ~u_input.c.x));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.a.a.x, var_2.c.a.a.x, _wgslsmith_div_f32(var_2.c.a.a.x, 3881f), 1456f), var_2.c.a.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-168f, _wgslsmith_f_op_f32(-var_2.c.a.a.x), true)))), var_1.d.c.a.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = 1014f;
    let var_1 = arg_1.d;
    let var_2 = select(abs(-u_input.d), vec2<i32>(select(u_input.c.x, 1i, arg_1.c.x), firstLeadingBit(~u_input.d.x)), false) | arg_1.a.xx;
    var var_3 = arg_1.d.c.a;
    var var_4 = var_1;
    return var_1;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(max(firstLeadingBit(2147483647i), -u_input.a), 1i)), -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~u_input.d), -(~u_input.c.xz)));
    var var_1 = Struct_4(vec3<i32>(reverseBits(~1i), u_input.c.x, u_input.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-839f, -123f) + _wgslsmith_f_op_f32(719f * -2945f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(868f))))), vec3<bool>(true, firstTrailingBit(i32(-1i) * -1i) > u_input.c.x, true), func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - -1954f)), vec3<bool>(true, true, true)), Struct_4(countOneBits(~vec3<i32>(0i, var_0.x, 2147483647i)), 1043f, select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), arg_0.x > arg_0.x), Struct_3(max(arg_0, vec3<u32>(3056u, arg_0.x, 4294967295u)), _wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.yy), Struct_2(Struct_1(vec4<f32>(-1063f, -264f, -2059f, -109f), u_input.b, false), -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1012f, -1450f)), _wgslsmith_f_op_f32(-416f - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(301f)))), !func_2(_wgslsmith_f_op_f32(f32(-1f) * -2750f), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)).wwy));
    let var_2 = ~vec4<i32>(u_input.c.x, u_input.d.x, -(~_wgslsmith_div_i32(var_1.a.x, u_input.c.x)), -(~u_input.c.x));
    var_0 = vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(u_input.d.x, -37161i), 1i), _wgslsmith_dot_vec2_i32(~(~var_1.a.xx), select(vec2<i32>(var_1.a.x, var_1.d.c.b), u_input.c.zx, all(vec4<bool>(true, var_1.d.c.a.c, true, var_1.c.x))))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(~4294967295u, firstTrailingBit(var_1.d.c.a.b)), ~(~vec2<u32>(arg_0.x, u_input.b))) % vec2<u32>(32u));
    let var_3 = true;
    return var_1.d.c.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = abs(7164u) ^ u_input.b;
    let var_1 = select(_wgslsmith_clamp_vec2_i32(-(~(-u_input.d)), vec2<i32>(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), 37895i), u_input.d), abs(-select(u_input.d, countOneBits(vec2<i32>(u_input.c.x, 11458i)), !vec2<bool>(false, arg_0.c))), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a.x) <= -702f, !(true && func_1(vec3<u32>(65004u, u_input.b, arg_0.b)).c)));
    var var_2 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(27234u, u_input.b), vec2<u32>(59259u, var_0)), firstTrailingBit(vec2<u32>(19061u, var_0))), u_input.b) >> (~countOneBits(~vec2<u32>(16141u, u_input.b)) % vec2<u32>(32u)));
    var var_3 = func_4(select(!vec4<bool>(true, u_input.c.x == u_input.d.x, arg_0.c, arg_0.c & false), !(!vec4<bool>(arg_0.c, true, false, arg_0.c)), func_1((global1[_wgslsmith_index_u32(1u, 9u)] ^ vec3<u32>(48791u, 82295u, 2712u)) & global1[_wgslsmith_index_u32(var_0, 9u)]).c), Struct_4(vec3<i32>(~u_input.a, ~(-1i), -1i), arg_0.a.x, select(func_2(_wgslsmith_f_op_f32(-arg_0.a.x), func_2(arg_0.a.x, vec3<bool>(arg_0.c, true, true)).xyz).zxx, !vec3<bool>(arg_0.c, true, true), true), Struct_3(~(~global1[_wgslsmith_index_u32(145821u, 9u)]), _wgslsmith_mod_u32(arg_0.b, _wgslsmith_mult_u32(var_2.x, 15558u)), Struct_2(func_4(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), Struct_4(vec3<i32>(u_input.c.x, 0i, u_input.d.x), arg_0.a.x, vec3<bool>(false, true, arg_0.c), Struct_3(vec3<u32>(u_input.b, var_2.x, var_0), 4294967295u, Struct_2(Struct_1(arg_0.a, 4294967295u, arg_0.c), var_1.x))), vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(false, arg_0.c, arg_0.c)).c.a, _wgslsmith_div_i32(-2147483647i, var_1.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) * -1005f), arg_0.a.x, -1873f))), vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.c, true, arg_0.c, false), vec4<bool>(arg_0.c, false, arg_0.c, false))), arg_0.c, arg_0.c)).c;
    var var_4 = var_3.a.a.yyy;
    return Struct_4(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-22729i & var_3.b, u_input.c.x, u_input.c.x) ^ -u_input.a, abs(func_4(select(vec4<bool>(false, true, var_3.a.c, var_3.a.c), vec4<bool>(false, arg_0.c, arg_0.c, var_3.a.c), arg_0.c), Struct_4(vec3<i32>(1i, var_1.x, u_input.d.x), var_3.a.a.x, vec3<bool>(false, true, false), Struct_3(global1[_wgslsmith_index_u32(u_input.b, 9u)], 1u, Struct_2(Struct_1(vec4<f32>(var_4.x, var_3.a.a.x, arg_0.a.x, -1000f), var_2.x, true), 1i))), func_4(vec4<bool>(arg_0.c, var_3.a.c, true, false), Struct_4(u_input.c, var_3.a.a.x, vec3<bool>(false, arg_0.c, var_3.a.c), Struct_3(vec3<u32>(arg_0.b, var_3.a.b, 4294967295u), var_2.x, Struct_2(Struct_1(vec4<f32>(arg_0.a.x, var_3.a.a.x, -318f, arg_0.a.x), arg_0.b, true), var_1.x))), vec3<f32>(var_4.x, arg_0.a.x, arg_0.a.x), vec3<bool>(false, false, arg_0.c)).c.a.a.yww, select(vec3<bool>(var_3.a.c, false, false), vec3<bool>(false, false, false), vec3<bool>(arg_0.c, arg_0.c, var_3.a.c))).c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-var_3.a.a.x))))), func_2(var_4.x, select(vec3<bool>(var_3.a.c & var_3.a.c, true, var_3.a.c), vec3<bool>(all(vec2<bool>(true, arg_0.c)), !arg_0.c, false), vec3<bool>(var_3.a.c, arg_0.c, true && var_3.a.c))).www, Struct_3(~(~(~global1[_wgslsmith_index_u32(80053u, 9u)])), abs(u_input.b) | u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(var_3.a.a, vec4<f32>(var_4.x, -284f, -162f, -517f))), ~arg_0.b, arg_0.c == true), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c) | 18396i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global1[_wgslsmith_index_u32(u_input.b, 9u)]));
    let var_1 = !(!vec2<bool>(false, var_0.d.c.a.c));
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~max(-1357i, 2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, 2147483647i), _wgslsmith_mod_i32(-25650i, -1i)), -2873i, var_0.d.c.b), vec4<i32>(select(-1i, 1i, var_0.d.c.a.c) | (var_0.d.c.b << (36153u % 32u)), abs(-var_0.a.x), 0i, var_0.d.c.b)), firstLeadingBit(firstLeadingBit(reverseBits(vec4<i32>(-3440i, -13729i, 2147483647i, var_0.d.c.b)))));
    global3 = -reverseBits(min(var_2.x ^ ~u_input.a, var_2.x));
    global1 = array<vec3<u32>, 9>();
    global2 = func_5(func_5(Struct_1(var_0.d.c.a.a, ~_wgslsmith_mod_u32(12953u, u_input.b), false)).d.c.a).c.x;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_sub_u32(~var_0.d.c.a.b >> (var_0.d.a.x % 32u), (_wgslsmith_mod_u32(u_input.b, var_0.d.b) | _wgslsmith_add_u32(0u, var_0.d.c.a.b)) & 89347u), var_0.d.c.a.a, var_0.d.c.a.a.wxw, var_0.d.a.zz);
}

