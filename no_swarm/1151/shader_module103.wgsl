struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 4>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<i32>, 19>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(arg_0, arg_0);
    var var_1 = arg_2.x;
    var var_2 = vec3<i32>(abs(u_input.b), ~0i, 2147483647i);
    var var_3 = Struct_4(0i, var_0, select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(~(arg_3.a.a.x | 1u), 4u)], var_0.a.b.x < arg_0.b.x, 2147483647i == ~global2.x), any(vec4<bool>(select(true, global1[_wgslsmith_index_u32(7947u, 4u)], arg_2.x), true, !arg_2.x, arg_2.x))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-3641i, var_2.x, var_2.x, u_input.b), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, global2.x, 44544i, 1i), global3[_wgslsmith_index_u32(~var_0.b.b.x, 19u)]))), _wgslsmith_clamp_i32(~(-1i), -2691i, _wgslsmith_add_i32(-2001i, ~0i)));
    var var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-766f)))), 782f, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(128f + 949f))))), var_0.a, -3012f, var_3.c.x, Struct_2(var_0.b, Struct_1(~vec3<u32>(var_0.b.b.x, var_0.b.b.x, arg_3.a.a.x), ~vec4<u32>(var_3.b.b.b.x, var_0.b.a.x, 63928u, var_3.b.b.a.x), arg_3.b.d, -_wgslsmith_clamp_i32(var_3.d.x, arg_0.d, 1i))));
    return vec3<u32>(0u, arg_3.a.b.x, ~22485u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.d;
    let var_1 = arg_1.e.a.a.x;
    let var_2 = arg_1;
    var var_3 = vec3<f32>(-1499f, 1486f, _wgslsmith_f_op_f32(trunc(var_2.c)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(var_2.e.b.a, var_2.e.b.b.wxz), vec4<u32>(_wgslsmith_sub_u32(57307u, abs(43229u)), ~(~var_2.b.a.x), _wgslsmith_add_u32(reverseBits(arg_1.e.b.b.x), var_1), 0u), abs(global2.x) >> (~min(0u, 4294967295u) % 32u), ~select(-1i, -21010i, !arg_1.d)), Struct_1(reverseBits(vec3<u32>(~0u, 4294967295u, reverseBits(arg_0.x))), vec4<u32>(~abs(var_2.e.b.a.x), 4294967295u, ~(~1u), 1u), -22049i, -(1i >> (~var_1 % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a)) - -1000f));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(1104f, Struct_1(vec3<u32>(arg_0.x, 2286u, reverseBits(arg_0.x) ^ 1u), ~vec4<u32>(~1u, ~arg_0.x, ~1u, arg_0.x | 1u), -2147483647i | ~global2.x, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec3_u32(func_3(Struct_1(vec3<u32>(arg_0.x, 1u, 4294967295u), vec4<u32>(4294967295u, arg_0.x, 0u, 33005u), arg_3.x, arg_3.x), -1i, vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], false), Struct_2(Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 54569u, arg_0.x, arg_0.x), arg_3.x, global2.x), Struct_1(vec3<u32>(1u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 106376u), -2147483647i, arg_3.x))), ~vec3<u32>(17326u, arg_0.x, 4294967295u)), Struct_3(_wgslsmith_f_op_f32(round(779f)), Struct_1(vec3<u32>(11311u, 1u, arg_0.x), vec4<u32>(14589u, arg_0.x, arg_0.x, arg_0.x), 30821i, u_input.a), _wgslsmith_div_f32(738f, 2291f), false, Struct_2(Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec4<u32>(29230u, arg_0.x, 69697u, arg_0.x), arg_3.x, global2.x), Struct_1(vec3<u32>(2777u, arg_0.x, 0u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_3.x, u_input.a))))) + -1324f), global2.x < -28770i, Struct_2(Struct_1(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x), (vec4<u32>(arg_0.x, 83464u, 113469u, 81759u) | vec4<u32>(arg_0.x, 28307u, 48035u, arg_0.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(26420u, 0u, arg_0.x, arg_0.x), vec4<u32>(39660u, arg_0.x, 0u, arg_0.x)), _wgslsmith_mult_i32(abs(2147483647i), countOneBits(arg_3.x)), ~arg_1), Struct_1(func_3(Struct_1(vec3<u32>(27531u, 6150u, arg_0.x), vec4<u32>(arg_0.x, 0u, 38760u, 0u), arg_1, global2.x), 2147483647i, select(vec2<bool>(arg_2, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)]), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec4<u32>(4294967295u, 4294967295u, arg_0.x, 4294967295u), arg_1, u_input.b), Struct_1(vec3<u32>(66205u, 4294967295u, 1u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 46320u), arg_3.x, arg_3.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(976u, 0u, 1u, arg_0.x), vec4<u32>(1u, 39816u, 0u, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x)), reverseBits(i32(-1i) * -3312i), arg_1)));
    var var_1 = _wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_4(var_0.e.a.b.xzx >> (vec3<u32>(1u, arg_0.x, 10554u) % vec3<u32>(32u)), Struct_3(1430f, var_0.b, var_0.c, false, Struct_2(var_0.b, Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), var_0.b.b, arg_3.x, u_input.a))))))));
    global2 = max(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 27168i), vec2<i32>(var_0.b.d, global2.x)), abs(arg_3.yx)) & firstTrailingBit(-vec2<i32>(26229i, -67366i)), vec2<i32>(-2147483647i, -firstLeadingBit(global2.x)));
    var var_2 = Struct_1(var_0.e.b.b.wxw, var_0.b.b, arg_3.x, u_input.a);
    let var_3 = vec3<bool>(!(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, firstLeadingBit(var_2.a.x)), 4u)]), !(var_2.a.x < _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.a.x, 1u), vec2<u32>(6564u, var_2.a.x), true), var_2.a.yx)), false);
    return Struct_1(vec3<u32>(~min(~var_0.b.b.x, ~var_2.a.x), _wgslsmith_mult_u32(53399u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_2.b, vec4<u32>(70213u, 40224u, 38501u, var_2.a.x)), var_0.e.b.b.x)), _wgslsmith_add_u32(42283u, firstTrailingBit(var_2.b.x) & _wgslsmith_add_u32(3371u, var_0.e.a.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(29778u, var_0.e.a.a.x, 34330u)), var_0.e.b.a), ~_wgslsmith_sub_u32(var_0.b.b.x, min(1u, 68526u)), func_3(Struct_1(abs(vec3<u32>(57925u, 33492u, arg_0.x)), var_0.e.b.b, -35338i, _wgslsmith_add_i32(u_input.b, global2.x)), u_input.b, select(vec2<bool>(true, var_3.x), var_3.zx, any(vec4<bool>(arg_2, false, var_0.d, true))), Struct_2(Struct_1(vec3<u32>(1u, 1u, var_0.b.a.x), vec4<u32>(53320u, var_0.e.a.b.x, 1u, 1u), arg_3.x, -75598i), Struct_1(var_2.a, vec4<u32>(9987u, var_0.b.a.x, 3198u, var_0.e.b.b.x), -39991i, 1i))).x, ~(~52876u ^ ~arg_0.x)), i32(-1i) * -56349i, (_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(arg_0.x, 19u)], vec4<i32>(global2.x, 1i, -2147483647i, u_input.a))) ^ 1i) & 9453i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = func_2(arg_0.a.yz >> (_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(arg_1.b.a.x, arg_1.e.a.a.x)), vec2<u32>(0u, arg_0.a.x) ^ ~arg_1.e.b.b.xy) % vec2<u32>(32u)), 1i, global1[_wgslsmith_index_u32(63352u ^ ~arg_1.e.b.a.x, 4u)] | any(!(!vec4<bool>(arg_1.d, true, false, false))), ~(select(-vec3<i32>(24977i, -1i, arg_1.e.b.d), _wgslsmith_sub_vec3_i32(vec3<i32>(-26091i, 1i, u_input.b), vec3<i32>(arg_1.e.b.d, u_input.a, arg_0.c)), select(vec3<bool>(arg_1.d, false, global1[_wgslsmith_index_u32(arg_1.b.a.x, 4u)]), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], arg_1.d, arg_1.d))) << (~vec3<u32>(1u, arg_1.e.b.b.x, arg_1.b.a.x) % vec3<u32>(32u))));
    global2 = vec2<i32>(_wgslsmith_dot_vec2_i32(-(~(~vec2<i32>(-28947i, var_0.d))), firstLeadingBit(-vec2<i32>(u_input.a, -53943i)) & _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(arg_1.b.d, -7531i)), vec2<i32>(var_0.c, arg_1.e.b.d))), ~global2.x >> (var_0.a.x % 32u));
    global3 = array<vec4<i32>, 19>();
    var var_1 = Struct_4(~var_0.d, arg_1.e, !select(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.d, global1[_wgslsmith_index_u32(arg_0.b.x, 4u)], false), vec3<bool>(global1[_wgslsmith_index_u32(25399u, 4u)], false, false)), vec3<bool>(true, true, arg_1.d), true || global1[_wgslsmith_index_u32(4294967295u, 4u)]), !(!vec3<bool>(arg_1.d, arg_1.d, global1[_wgslsmith_index_u32(arg_0.b.x, 4u)])), true), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(0u, ~(0u | arg_0.a.x))), 19u)], -8093i);
    var var_2 = ~arg_0.a.x | ~firstTrailingBit(4294967295u);
    return ~(~_wgslsmith_mod_u32(func_3(arg_0, _wgslsmith_div_i32(arg_0.d, -6505i), !var_1.c.zy, Struct_2(var_0, Struct_1(vec3<u32>(1u, arg_0.a.x, arg_1.b.b.x), arg_1.e.a.b, -1i, var_1.e))).x, 20500u));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global0 = arg_1.c;
    var var_0 = false;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(abs(1u), _wgslsmith_div_u32(arg_1.b.a.x, _wgslsmith_mult_u32(4294967295u, arg_1.e.b.b.x))), arg_0, ~(~(~arg_0)), func_5(func_2(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 14606u), arg_1.e.a.b.yw), ~(-11121i), all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.e.a.a.x, 4u)], arg_1.d, global1[_wgslsmith_index_u32(arg_1.b.a.x, 4u)])), vec3<i32>(u_input.a, global2.x, global2.x) << (vec3<u32>(26114u, arg_0, 63602u) % vec3<u32>(32u))), arg_1)), vec4<u32>(arg_1.e.a.b.x, ~firstTrailingBit(_wgslsmith_add_u32(arg_1.b.a.x, 0u)), arg_1.b.b.x, ~_wgslsmith_clamp_u32(~4294967295u, ~arg_1.b.b.x, ~arg_0)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * -902f)))));
    let var_3 = ~_wgslsmith_mult_u32(abs(min(~arg_1.b.b.x, func_5(Struct_1(vec3<u32>(11194u, 26371u, 0u), vec4<u32>(68385u, var_1.x, 1u, 71120u), u_input.a, 0i), Struct_3(arg_1.a, Struct_1(var_1.zyz, vec4<u32>(arg_0, 4294967295u, arg_1.b.b.x, arg_1.b.b.x), u_input.b, arg_1.b.d), arg_1.a, false, arg_1.e)))), ~arg_0);
    return func_2((min(func_3(Struct_1(arg_1.b.a, vec4<u32>(37408u, 33168u, 0u, 4294967295u), arg_1.b.d, global2.x), u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 4u)], arg_1.d), arg_1.e).xy, vec2<u32>(arg_0, arg_0) | arg_1.b.a.yy) << ((~vec2<u32>(var_1.x, 4294967295u) ^ (var_1.yy << (vec2<u32>(arg_1.e.b.a.x, arg_1.e.b.b.x) % vec2<u32>(32u)))) % vec2<u32>(32u))) & ~(arg_1.b.b.yw | max(vec2<u32>(4294967295u, var_1.x), vec2<u32>(arg_0, var_3))), arg_1.e.b.c, any(vec3<bool>(true & (global1[_wgslsmith_index_u32(1u, 4u)] && false), false, true)), -abs(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.e.b.c, arg_1.b.c, -8259i) | vec3<i32>(2147483647i, -2147483647i, global2.x), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.e.a.d, u_input.a, u_input.b), vec3<i32>(19366i, -40430i, global2.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(228f, 349f)) - 883f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_3.a.b.zwz, Struct_3(-2230f, Struct_1(vec3<u32>(0u, arg_0.b.x, arg_3.a.b.x), vec4<u32>(1u, 41587u, 11427u, arg_0.b.x), -2147483647i, 0i), 1080f, true, arg_3))) * _wgslsmith_f_op_f32(abs(1811f)))))), func_2(arg_3.b.b.yz, global2.x, !arg_1.x, vec3<i32>(-max(u_input.b, -47265i), min(_wgslsmith_clamp_i32(66306i, -781i, global2.x), _wgslsmith_add_i32(arg_0.c, arg_0.d)), -(40200i ^ arg_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1239f, 630f)))), global1[_wgslsmith_index_u32(~4294967295u, 4u)] && true, arg_3);
    global1 = array<bool, 4>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), Struct_1(~arg_0.b.yxz, _wgslsmith_sub_vec4_u32(arg_2, select(~vec4<u32>(arg_3.a.b.x, 1u, arg_2.x, 4294967295u), vec4<u32>(53363u, 59155u, 4294967295u, arg_0.a.x), !vec4<bool>(global1[_wgslsmith_index_u32(57185u, 4u)], true, global1[_wgslsmith_index_u32(39582u, 4u)], arg_1.x))), arg_0.c, -_wgslsmith_mult_i32(~43511i, arg_3.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c - -593f), -321f, -2147483647i > global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -488f))), all(arg_1), var_0.e);
    let var_2 = select(select(!select(!vec4<bool>(false, false, var_1.d, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.b.b.x, 4u)], false, false, false), select(vec4<bool>(true, var_0.d, false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.b.x, 4u)], false, true, true), vec4<bool>(false, false, arg_1.x, true))), select(vec4<bool>(false, select(false, false, global1[_wgslsmith_index_u32(var_0.b.a.x, 4u)]), arg_1.x, !var_0.d), !vec4<bool>(var_1.d, false, true, true), false), vec4<bool>(true, func_3(var_0.e.a, 0i, arg_1.yz, Struct_2(arg_0, Struct_1(vec3<u32>(arg_2.x, 4294967295u, arg_3.a.a.x), vec4<u32>(0u, var_0.b.b.x, 40597u, var_0.e.a.a.x), u_input.b, arg_3.b.c))).x < 34730u, var_0.d, true)), vec4<bool>(!any(arg_1.zz), false, all(select(!arg_1, select(vec3<bool>(var_1.d, false, false), arg_1, false), select(arg_1, arg_1, var_1.d))), any(!arg_1.zy)), select(vec4<bool>(true, true, !var_1.d, arg_1.x), vec4<bool>(!all(vec3<bool>(arg_1.x, true, arg_1.x)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), global1[_wgslsmith_index_u32(reverseBits(0u) | _wgslsmith_sub_u32(1u, var_1.e.b.b.x), 4u)], !global1[_wgslsmith_index_u32(var_0.e.b.a.x, 4u)]), vec4<bool>(true, any(vec4<bool>(var_1.d, false, arg_1.x, true)), global1[_wgslsmith_index_u32(var_0.e.b.b.x >> (countOneBits(0u) % 32u), 4u)], _wgslsmith_dot_vec3_i32(vec3<i32>(30608i, 0i, u_input.b), vec3<i32>(var_0.b.d, arg_3.a.c, 0i)) <= -arg_3.a.d)));
    global3 = array<vec4<i32>, 19>();
    return vec2<bool>(true, any(arg_1.xy) && var_0.d);
}

fn func_7(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1351f, _wgslsmith_f_op_f32(select(-1592f, -1363f, true)))))) * -480f);
    var var_0 = arg_3.yzw;
    global1 = array<bool, 4>();
    global3 = array<vec4<i32>, 19>();
    return Struct_3(_wgslsmith_f_op_f32(ceil(-293f)), Struct_1(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_3.x), vec2<u32>(arg_3.x, 4294967295u)), var_0.x, max(45042u, var_0.x)), vec4<u32>(18623u, _wgslsmith_div_u32(select(arg_3.x, arg_3.x, global1[_wgslsmith_index_u32(17210u, 4u)]), 40981u), 30200u, 41572u), u_input.a, _wgslsmith_mult_i32(firstLeadingBit(abs(arg_1)), select(_wgslsmith_add_i32(-17917i, -17014i), reverseBits(45828i), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(204f + _wgslsmith_f_op_f32(-838f * _wgslsmith_f_op_f32(-969f - -774f))))), !((~var_0.x >> (firstTrailingBit(57971u) % 32u)) != arg_3.x), Struct_2(Struct_1(vec3<u32>(~33859u, ~var_0.x, 4379u), _wgslsmith_div_vec4_u32(~arg_3, ~vec4<u32>(var_0.x, 1u, var_0.x, 7262u)), firstTrailingBit(select(7775i, arg_1, arg_0.x)), (arg_2 ^ 63082i) ^ (arg_2 >> (var_0.x % 32u))), func_1(arg_3.x, Struct_3(_wgslsmith_f_op_f32(min(1472f, 1512f)), func_2(vec2<u32>(arg_3.x, arg_3.x), u_input.b, false, vec3<i32>(1i, 0i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -801f), func_6(Struct_1(vec3<u32>(0u, var_0.x, 0u), vec4<u32>(21756u, 1u, 47612u, 1u), 2147483647i, 2147483647i), vec3<bool>(true, true, true), arg_3, Struct_2(Struct_1(vec3<u32>(arg_3.x, 4294967295u, 37849u), arg_3, -2147483647i, arg_1), Struct_1(arg_3.yyy, vec4<u32>(arg_3.x, var_0.x, 58912u, arg_3.x), 21806i, 1i))).x, Struct_2(Struct_1(vec3<u32>(arg_3.x, 14934u, 11059u), vec4<u32>(arg_3.x, arg_3.x, 34509u, arg_3.x), arg_2, arg_2), Struct_1(vec3<u32>(7695u, arg_3.x, arg_3.x), vec4<u32>(8719u, 4294967295u, var_0.x, var_0.x), -2147483647i, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(select(!func_6(func_1(139137u, Struct_3(803f, Struct_1(vec3<u32>(38985u, 5628u, 1u), vec4<u32>(46932u, 0u, 44971u, 15686u), -17563i, -21467i), 1062f, global1[_wgslsmith_index_u32(43571u, 4u)], Struct_2(Struct_1(vec3<u32>(0u, 32961u, 1u), vec4<u32>(50723u, 5024u, 1u, 94524u), 44518i, u_input.b), Struct_1(vec3<u32>(4294967295u, 1609u, 0u), vec4<u32>(17826u, 4294967295u, 0u, 1u), -15876i, global2.x)))), !vec3<bool>(global1[_wgslsmith_index_u32(2485u, 4u)], global1[_wgslsmith_index_u32(89695u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), ~vec4<u32>(4294967295u, 26666u, 4294967295u, 13139u), Struct_2(Struct_1(vec3<u32>(15504u, 1u, 0u), vec4<u32>(40976u, 14244u, 0u, 1u), u_input.a, global2.x), Struct_1(vec3<u32>(0u, 0u, 12547u), vec4<u32>(4294967295u, 1u, 102166u, 31364u), -20520i, global2.x))), vec2<bool>(true, all(select(vec2<bool>(global1[_wgslsmith_index_u32(71458u, 4u)], false), vec2<bool>(global1[_wgslsmith_index_u32(46908u, 4u)], global1[_wgslsmith_index_u32(92983u, 4u)]), true))), vec2<bool>(!(!global1[_wgslsmith_index_u32(4294967295u, 4u)]), global1[_wgslsmith_index_u32(4294967295u, 4u)])), ~1i, global2.x, vec4<u32>(~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, 1u)), _wgslsmith_clamp_u32(max(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(7717u, 42985u)), _wgslsmith_clamp_u32(~110899u, 0u, 1u), ~1u), 50931u, reverseBits(~_wgslsmith_mult_u32(47802u, 1u))));
    var var_1 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(~_wgslsmith_div_i32(global2.x, var_0.e.a.d), 14196i, min(global2.x, _wgslsmith_mod_i32(var_0.b.d, 60410i))), (-vec3<i32>(2147483647i, global2.x, -41193i) >> (_wgslsmith_add_vec3_u32(var_0.e.b.a, vec3<u32>(0u, 23944u, 0u)) % vec3<u32>(32u))) & vec3<i32>(-1i << (var_0.e.b.b.x % 32u), ~39751i, var_0.e.b.c)), ~(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.b, 15674i)) ^ vec3<i32>(min(u_input.a, abs(var_0.b.c)), var_0.e.a.c, ~1i));
    let var_2 = var_0.c;
    var var_3 = vec4<u32>(36541u, 21545u, 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_5(Struct_1(var_0.b.b.wyx, vec4<u32>(21789u, 30295u, 4294967295u, var_0.b.b.x), -26584i, 2147483647i), Struct_3(824f, var_0.b, 1000f, global1[_wgslsmith_index_u32(54083u, 4u)], Struct_2(var_0.b, var_0.e.b))), ~0u, ~53957u), var_0.e.b.b.zxy), 9960u ^ countOneBits(var_0.e.b.a.x & var_0.e.b.a.x)));
    var var_4 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(30250u, 47523u), func_1(var_0.b.b.x, Struct_3(728f, Struct_1(var_0.b.b.xzw, var_0.e.b.b, -2147483647i, 43194i), _wgslsmith_f_op_f32(f32(-1f) * -1242f), var_0.d, var_0.e)).b.x);
    var var_5 = !select(!vec3<bool>(true, var_0.d, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_0.e.a.b.x, 4u)], true))), vec3<bool>(false, true, !(!var_0.d)), select(vec3<bool>(var_0.c < -509f, true, true), !vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(13858i, ~var_1.x & var_1.x), u_input.a, var_2, vec4<i32>(-_wgslsmith_div_i32(var_0.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(u_input.b, -36568i))), global2.x, abs(-1831i), _wgslsmith_dot_vec4_i32(max(global3[_wgslsmith_index_u32(~0u, 19u)], global3[_wgslsmith_index_u32(var_0.b.b.x, 19u)]), vec4<i32>(global2.x & var_1.x, u_input.a << (var_0.b.b.x % 32u), u_input.a, 2147483647i))));
}

