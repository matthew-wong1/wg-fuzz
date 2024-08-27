struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: Struct_1 = Struct_1(2147483647i, vec4<f32>(-322f, 475f, 1580f, 120f), i32(-2147483648), 450f, vec4<u32>(51432u, 88139u, 0u, 42971u));

var<private> global2: array<u32, 9> = array<u32, 9>(83802u, 0u, 71996u, 32900u, 96371u, 4294967295u, 31925u, 4294967295u, 4294967295u);

var<private> global3: array<vec3<bool>, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = arg_0.yz;
    global0 = array<Struct_4, 10>();
    global2 = array<u32, 9>();
    var var_1 = vec2<i32>(~_wgslsmith_dot_vec2_i32(max(arg_0.yy, firstLeadingBit(arg_0.zz)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), arg_1, vec2<bool>(true, arg_3)), select(arg_0.xy, arg_0.xz, vec2<bool>(true, arg_3)))), 42413i);
    global2 = array<u32, 9>();
    return 21080i;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    var var_0 = arg_1;
    global1 = Struct_1(func_3(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(17594i, global1.c, -13012i), vec3<i32>(global1.a, 32087i, 0i), vec3<i32>(2147483647i, 1i, global1.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_add_i32(global1.a, -18912i)), abs(firstTrailingBit(vec2<i32>(global1.c, -16423i)))), _wgslsmith_sub_u32(38476u, select(global2[_wgslsmith_index_u32(0u, 9u)], 5572u, true)) | ~(global2[_wgslsmith_index_u32(1u, 9u)] << (6300u % 32u)), global1.c > firstLeadingBit(global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -500f, 431f, 594f), vec4<f32>(arg_1, -1056f, -1394f, 669f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-global1.b), -513f == arg_0.x)) - global1.b)), _wgslsmith_mult_i32(~min(-2147483647i, global1.a), _wgslsmith_mult_i32(~global1.c, countOneBits(global1.c))) | func_3(vec3<i32>(max(-1i, global1.a), countOneBits(1i), -global1.c), vec2<i32>(global1.c, global1.a), global1.e.x, true), 771f, max(global1.e, ~global1.e ^ _wgslsmith_clamp_vec4_u32(firstTrailingBit(global1.e), ~global1.e, global1.e >> (global1.e % vec4<u32>(32u)))));
    return _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(i32(-1i) * -47392i, 15040i)), vec2<i32>(max(~global1.a, 7036i), 6033i));
}

fn func_1() -> bool {
    global0 = array<Struct_4, 10>();
    global1 = Struct_1(~func_2(_wgslsmith_f_op_vec3_f32(max(global1.b.ywy, vec3<f32>(-185f, -1347f, -893f))), global1.b.x) & (11465i ^ (-global1.c & _wgslsmith_clamp_i32(global1.c, global1.c, 16741i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-2057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global1.b.x))), 2168f, global1.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d), global1.d, _wgslsmith_f_op_f32(round(global1.d)), _wgslsmith_f_op_f32(sign(735f))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(global1.b.x - -747f), _wgslsmith_f_op_f32(sign(global1.b.x)), -736f))), -(~firstTrailingBit(global1.a)), _wgslsmith_f_op_f32(round(-1028f)), global1.e);
    var var_0 = Struct_1(abs(global1.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-487f, global1.d))))), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.c, 1i, -2147483647i, global1.a), vec4<i32>(-31897i, global1.c, global1.a, 32426i)), ~vec4<i32>(global1.a, -1i, global1.a, 0i)), 1i) | -2147483647i, global1.d, ~(~(~(~global1.e))));
    let var_1 = Struct_4(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(global1.e.x, 9u)]), Struct_2(Struct_1(_wgslsmith_clamp_i32(~1i, var_0.a, var_0.a | -9991i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, var_0.b.x, -1853f, global1.d) * _wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(-1170f, -536f, global1.b.x, var_0.d))), ~(-2147483647i), -1433f, vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.e.xzz, global1.e.wxz), abs(75000u), reverseBits(0u), _wgslsmith_div_u32(global1.e.x, u_input.a))), Struct_1(~countOneBits(var_0.c), var_0.b, var_0.c, var_0.d, global1.e), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), firstTrailingBit(max(-1i, -13700i)), _wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(-1433f * var_0.b.x)), var_0.e), vec3<f32>(_wgslsmith_f_op_f32(select(602f, var_0.d, 453f != var_0.b.x)), _wgslsmith_f_op_f32(-2137f - -1597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1748f))))));
    global1 = Struct_1(1i, var_0.b, var_0.c, -621f, ~abs(~select(vec4<u32>(global1.e.x, 9267u, u_input.c, u_input.b), vec4<u32>(var_1.a, 0u, 1u, 45703u), vec4<bool>(true, false, true, false))));
    return true;
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_u32(~select(select(vec2<u32>(global1.e.x, 4294967295u), vec2<u32>(12974u, 4294967295u), vec2<bool>(false, true)) << (~global1.e.zw % vec2<u32>(32u)), ~global1.e.xx, vec2<bool>(arg_0, true)), abs(vec2<u32>(global1.e.x, _wgslsmith_sub_u32(u_input.c, 15849u) | global1.e.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(988f, _wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.x)) + _wgslsmith_f_op_f32(min(global1.d, global1.d)))))), -177f, _wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)));
    let var_2 = var_1.x;
    var var_3 = global1.d;
    var var_4 = select(global1.e.zwx, ~_wgslsmith_add_vec3_u32(global1.e.zwx | (vec3<u32>(4294967295u, 28464u, var_0.x) >> (vec3<u32>(var_0.x, var_0.x, 0u) % vec3<u32>(32u))), reverseBits(vec3<u32>(260u, 35569u, u_input.b) | vec3<u32>(54477u, var_0.x, 1u))), !(!(_wgslsmith_div_i32(-2480i, global1.c) <= -global1.c)));
    return Struct_2(Struct_1(-min(global1.c, min(global1.a, global1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, _wgslsmith_f_op_f32(1249f - -202f), _wgslsmith_f_op_f32(var_1.x * var_1.x), var_2) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1445f, -582f, -1412f)) - _wgslsmith_f_op_vec4_f32(select(global1.b, global1.b, arg_0)))), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -1634f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * var_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(19575u, 0u, global1.e.x, var_0.x), ~vec4<u32>(global1.e.x, 4294967295u, 4294967295u, 1u)) << (vec4<u32>(~global1.e.x, abs(var_4.x), ~34379u, max(88976u, var_0.x)) % vec4<u32>(32u))), Struct_1(~select(global1.a, _wgslsmith_add_i32(global1.a, global1.a), any(vec2<bool>(true, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-737f, 1000f, arg_0)), var_2, _wgslsmith_div_f32(-452f, var_2), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2, var_2, var_2) * vec4<f32>(global1.b.x, -216f, 1179f, -154f)), vec4<f32>(177f, 1000f, var_1.x, global1.b.x)))), _wgslsmith_sub_i32(-(~15550i), ~1i), var_1.x, select(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], var_0.x, var_0.x, 1u)), vec4<u32>(138944u, var_0.x, 58378u, 4294967295u), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, true), true)) << (_wgslsmith_div_vec4_u32(vec4<u32>(156678u, 14045u, 21682u, global1.e.x), select(global1.e, vec4<u32>(60467u, var_0.x, u_input.a, 4294967295u), arg_0)) % vec4<u32>(32u))), Struct_1(~_wgslsmith_div_i32(global1.c, -2147483647i) << (58465u % 32u), global1.b, global1.c, var_1.x, _wgslsmith_sub_vec4_u32(~global1.e, vec4<u32>(u_input.b, var_4.x, 6532u, 1u) >> (_wgslsmith_add_vec4_u32(global1.e, vec4<u32>(18825u, 1u, 33696u, u_input.a)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, -364f), vec3<f32>(var_2, var_2, 334f)), vec3<f32>(-864f, global1.d, 722f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -132f, 454f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(~0u, 9u)]), 1u, abs(countOneBits(u_input.a))), max(select(~global1.e.xzy, countOneBits(vec3<u32>(34586u, global1.e.x, 55213u)) & global1.e.wxz, any(vec4<bool>(true, false, true, false))), global1.e.xwy));
    let var_1 = Struct_1(26261i, _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.b.x)), 1000f, _wgslsmith_f_op_f32(1146f * global1.d), -748f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)))), ~min(1i, global1.c), global1.b.x, (min(_wgslsmith_mult_vec4_u32(global1.e, vec4<u32>(38309u, 21067u, 1u, 1u)), reverseBits(global1.e)) | _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44280u, 9u)], 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b, 4294967295u) | vec4<u32>(22349u, 1u, 0u, global2[_wgslsmith_index_u32(u_input.c, 9u)]), ~vec4<u32>(u_input.b, 41290u, 22523u, global2[_wgslsmith_index_u32(4294967295u, 9u)]))) << (global1.e % vec4<u32>(32u)));
    let var_2 = !any(global3[_wgslsmith_index_u32(abs(abs(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 9u)], var_0.x))), 23u)]);
    let var_3 = func_4(false & func_1());
    var var_4 = 55671u;
    global1 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, -116f, 264f, 885f) * _wgslsmith_f_op_vec4_f32(floor(global1.b))), vec4<f32>(_wgslsmith_f_op_f32(max(541f, -914f)), var_3.a.b.x, _wgslsmith_f_op_f32(step(-1325f, global1.b.x)), _wgslsmith_f_op_f32(abs(var_1.d))))), ~1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.x - 846f))))))), countOneBits(vec4<u32>(~21445u, 67713u << (firstTrailingBit(global2[_wgslsmith_index_u32(2820u, 9u)]) % 32u), u_input.c, abs(global1.e.x))));
    var_4 = _wgslsmith_sub_u32(43922u, var_3.a.e.x << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.e.wy, countOneBits(~abs(var_1.e.ww))), func_4(!(!(var_3.b.c <= -52442i))).b.b);
}

