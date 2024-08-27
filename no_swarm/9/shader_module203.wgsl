struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

var<private> global1: f32 = 1055f;

var<private> global2: vec3<f32>;

var<private> global3: array<vec2<f32>, 14>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> u32 {
    global0 = array<vec2<i32>, 8>();
    let var_0 = reverseBits(~arg_0.e.c.c.xy | ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_0.b.zw)));
    let var_1 = _wgslsmith_mod_i32(~(0i >> (firstTrailingBit(~var_0.x) % 32u)), ((~arg_0.c.x >> (countOneBits(34329u) % 32u)) >> (abs(5897u) % 32u)) & (~(~(-2147483647i)) ^ ~(~arg_0.a)));
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * arg_0.e.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(max(arg_0.e.a.wzy, arg_0.e.a.zxx))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f * 456f) * 131f) + -483f), _wgslsmith_f_op_f32(-233f * 516f), 1000f)));
    let var_2 = Struct_1(arg_2, arg_0.e.b.b, ~vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(1u, u_input.a), 62484u, u_input.a));
    return _wgslsmith_sub_u32(~(~(arg_0.b.x << (92549u % 32u))), u_input.a);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(u_input.b & 2147483647i, vec4<u32>(_wgslsmith_add_u32(~(~u_input.a), u_input.a), _wgslsmith_div_u32(firstLeadingBit(min(4294967295u, 30965u)), ~(u_input.a & 4294967295u)), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u)), ~105247u), func_3(Struct_3(-1i, vec4<u32>(4294967295u, u_input.a, 4270u, 145525u), ~vec4<i32>(u_input.b, u_input.b, -2147483647i, -2147483647i), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), Struct_2(vec4<f32>(global2.x, -1000f, 868f, global2.x), Struct_1(-1074f, global0[_wgslsmith_index_u32(53985u, 8u)], vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), Struct_1(global2.x, vec2<i32>(9350i, 1i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.b, true)), ~34034i, -601f)), -vec4<i32>(min(u_input.b, 27935i), 1i, 23726i, _wgslsmith_mod_i32(u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 76791u, 117320u, 44093u), true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u))), ~firstLeadingBit(vec4<u32>(u_input.a, 2669u, 0u, u_input.a))) % vec4<u32>(32u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(65960u >= u_input.a, all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), false), vec4<bool>(37337u > u_input.a, all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false)), 317f > global2.x)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, global2.x, -1167f, global2.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-729f, -585f, global2.x, 842f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, 712f, -620f, global2.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 956f)), _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 8u)] & global0[_wgslsmith_index_u32(13585u, 8u)], _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], vec2<i32>(-51716i, -1i))), _wgslsmith_mod_vec4_u32(vec4<u32>(3432u, 0u, 9809u, 37260u) | vec4<u32>(7089u, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 17768u, u_input.a, u_input.a), vec4<u32>(73673u, u_input.a, u_input.a, u_input.a)))), Struct_1(global2.x, vec2<i32>(u_input.b, -22571i), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 51211u, u_input.a, u_input.a) & vec4<u32>(0u, u_input.a, 0u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 53895u, u_input.a))), 1i, true));
    var var_1 = Struct_3(_wgslsmith_div_i32(countOneBits(1i), reverseBits(-2147483647i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(18044u), 4733u, countOneBits(4294967295u), ~_wgslsmith_mod_u32(u_input.a, var_0.e.c.c.x)), vec4<u32>(var_0.e.c.c.x, ~46011u, u_input.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, var_0.b.x), 4294967295u)), ~(~_wgslsmith_clamp_vec4_u32(var_0.e.c.c, var_0.b, var_0.b))), vec4<i32>(_wgslsmith_mod_i32(u_input.b, var_0.e.b.b.x) >> (~46918u % 32u), _wgslsmith_div_i32(u_input.b, 0i), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, u_input.b), vec3<i32>(u_input.b, -28187i, var_0.e.b.b.x))), ~vec3<i32>(var_0.a, var_0.c.x, -28548i)), var_0.a), var_0.d, var_0.e);
    let var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(abs(25771i), -48960i)), i32(-1i) * -u_input.b), min(var_0.b >> (var_0.e.b.c % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(var_0.b, var_0.e.c.c))), var_0.c, !var_0.d, var_0.e);
    global3 = array<vec2<f32>, 14>();
    var_0 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_mod_i32(9134i, -2147483647i), ~u_input.b), _wgslsmith_add_vec3_i32(~var_2.c.zzw, vec3<i32>(var_0.e.d, 2147483647i, 2147483647i))), max(i32(-1i) * -u_input.b, u_input.b << (_wgslsmith_dot_vec4_u32(var_0.b, var_1.b) % 32u))), (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.e.c.c.x, 1u, var_0.b.x), vec4<u32>(33182u, var_2.b.x, 0u, 51538u)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e.c.c.x, 0u), var_2.e.b.c.zz), ~0u, 4294967295u, 14505u)) << (_wgslsmith_div_vec4_u32(~var_1.e.c.c, ~vec4<u32>(16807u, var_1.b.x, var_0.e.b.c.x, 48995u)) % vec4<u32>(32u)), countOneBits(vec4<i32>(var_2.c.x, -abs(11030i), min(_wgslsmith_sub_i32(var_1.a, 3955i), _wgslsmith_div_i32(var_1.a, -36911i)), -(var_2.e.c.b.x & -7961i))), select(var_0.d, var_1.d, all(!select(var_0.d, var_2.d, true))), var_2.e);
    return _wgslsmith_f_op_f32(round(157f));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global3 = array<vec2<f32>, 14>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + -214f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-239f * global2.x), _wgslsmith_f_op_f32(-244f * global2.x)), _wgslsmith_f_op_f32(func_2())))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2262f)), global2.x)), vec2<i32>(u_input.b, u_input.b), ~(~vec4<u32>(u_input.a, 1u, u_input.a, 72140u) ^ ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(trunc(1f)), vec2<i32>(_wgslsmith_sub_i32(~u_input.b, firstTrailingBit(40313i)), 2147483647i), vec4<u32>(_wgslsmith_div_u32(3613u, u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 43790u)), ~5876u, 80778u)), 0i, true);
    var var_1 = var_0;
    let var_2 = var_0;
    global1 = var_1.a.x;
    return Struct_2(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1279f, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -327f), 1000f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(683f, -1013f, global2.x, -260f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(845f, _wgslsmith_f_op_f32(var_0.a.x - -547f)) * _wgslsmith_f_op_f32(-var_2.c.a)), ~(~(-var_2.b.b)), ~var_1.c.c), var_0.b, abs(0i), var_2.e);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = -1042f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a * 770f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f * -214f) * arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(f32(-1f) * -712f))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(-145f, arg_1.c.a)), reverseBits((vec2<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.a, 8u)]) & (reverseBits(global0[_wgslsmith_index_u32(u_input.a, 8u)]) ^ (vec2<i32>(-31297i, arg_2) | vec2<i32>(-2147483647i, arg_1.c.b.x)))), ~min(arg_1.c.c, arg_1.b.c));
    var var_2 = true && func_1(u_input.b).e;
    global0 = array<vec2<i32>, 8>();
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1297f), firstTrailingBit(countOneBits(-_wgslsmith_mult_vec2_i32(var_1.b, vec2<i32>(u_input.b, var_1.b.x)))), abs(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(35803u, var_1.c.x), 8406u ^ var_1.c.x, u_input.a, ~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(906f, 1202f, 205f, global2.x)))), func_4(any(vec2<bool>(select(true, false, false), u_input.a >= u_input.a)), func_1(-1i), 1i, true), Struct_1(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(min(1u, 25209u), 8u)], func_1(u_input.b).b.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(2476u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) | ~vec4<u32>(u_input.a, 6659u, 52964u, u_input.a)), reverseBits(u_input.b), !(!any(vec3<bool>(false, true, true))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.xzy - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(min(global2.x, var_0.b.a)), _wgslsmith_f_op_f32(global2.x - 1006f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1227f), var_0.c.a))), _wgslsmith_f_op_f32(-global2.x), -1008f));
    let var_1 = ~var_0.c.c.xz;
    var var_2 = select(_wgslsmith_clamp_u32(22171u, _wgslsmith_sub_u32(abs(var_1.x), ~var_1.x), u_input.a), 1u, true);
    let var_3 = Struct_2(var_0.a, var_0.b, Struct_1(global2.x, vec2<i32>(_wgslsmith_div_i32(~var_0.c.b.x, var_0.c.b.x & 2147483647i), 2147483647i), vec4<u32>(_wgslsmith_add_u32(var_0.b.c.x, 1u), _wgslsmith_mod_u32(~u_input.a, 1u), 54301u, _wgslsmith_clamp_u32(6035u, var_1.x, _wgslsmith_add_u32(u_input.a, var_0.c.c.x)))), u_input.b, any(select(vec3<bool>(false, all(vec4<bool>(true, false, false, false)), !var_0.e), select(!vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(true, var_0.e, true), all(vec4<bool>(false, false, var_0.e, var_0.e))), 1i <= _wgslsmith_clamp_i32(var_0.c.b.x, var_0.c.b.x, 55632i))));
    var var_4 = vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -847f)), _wgslsmith_f_op_f32(-846f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - var_0.c.a)) - _wgslsmith_f_op_f32(global2.x - -954f))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1797f)), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_0.b.c.x, _wgslsmith_mod_u32(select(4294967295u, 482u, var_3.e), var_1.x), ~4294967295u ^ func_1(0i).b.c.x), ~_wgslsmith_mult_vec2_u32(func_4(any(vec2<bool>(var_0.e, var_3.e)), func_1(-1i), i32(-1i) * -1i, any(vec4<bool>(false, var_0.e, true, false))).c.ww, var_1), 397f, _wgslsmith_add_vec3_u32(var_0.b.c.zww, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.b.c.zwx, vec3<u32>(45598u, 1u, 4294967295u), vec3<u32>(26789u, 20888u, u_input.a)), ~vec3<u32>(1u, 1693u, 0u)), ~var_3.b.c.xyz | reverseBits(vec3<u32>(u_input.a, 1u, var_3.b.c.x)))));
}

