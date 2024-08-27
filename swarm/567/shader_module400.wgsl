struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, true, true, true, false, false);

var<private> global1: i32 = -28612i;

var<private> global2: array<Struct_5, 5>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> f32 {
    var var_0 = vec3<bool>(false, true, !(!global0[_wgslsmith_index_u32(countOneBits(0u), 8u)]));
    global1 = -1i;
    global2 = array<Struct_5, 5>();
    global2 = array<Struct_5, 5>();
    let var_1 = Struct_1(~countOneBits(~vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-775f * -1986f))), -665f), _wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f - -817f) - 1375f))), ~vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.b), _wgslsmith_div_u32(47211u, 1u) & _wgslsmith_mod_u32(21489u, u_input.c.x), u_input.b, 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f + _wgslsmith_f_op_f32(-var_1.b.x))) - var_1.b.x);
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = u_input.d.x;
    let var_1 = select(arg_0, select(!(!arg_0), !(!arg_0), vec3<bool>(select(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, global0[_wgslsmith_index_u32(u_input.a, 8u)])), u_input.d.x < 2147483647i, false), true, true || (true || arg_0.x))), select(arg_0, arg_0, arg_0));
    var var_2 = u_input.d.x;
    global2 = array<Struct_5, 5>();
    var var_3 = Struct_4(var_1.zx, arg_0.x, u_input.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1143f, -927f)), vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1539f, -592f))))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(!select(vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], true), select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<bool>(true, true))), Struct_1(countOneBits(-vec3<i32>(u_input.d.x, -2147483647i, -14653i)), vec2<f32>(199f, 453f), vec4<u32>(u_input.c.x << (u_input.a % 32u), 1u, ~0u, ~u_input.c.x)), Struct_1(vec3<i32>(-26406i, -arg_0, ~u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(538f, 2581f), vec2<f32>(-451f, -1197f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, -187f))), ~(~vec4<u32>(16354u, u_input.a, 89654u, u_input.b))), _wgslsmith_f_op_vec2_f32(func_3(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], true))))), select(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -4558i, 2147483647i) | vec3<i32>(-1i, 0i, arg_0), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, arg_0, u_input.d.x))), ~(reverseBits(vec3<i32>(u_input.d.x, 1i, u_input.d.x)) | vec3<i32>(-2147483647i, -8048i, 1i)), select(vec3<bool>(!global0[_wgslsmith_index_u32(44141u, 8u)], true, !global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(36693u, 8u)], true, global0[_wgslsmith_index_u32(~6792u, 8u)]), true)), Struct_2(vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 1u), 8u)], !global0[_wgslsmith_index_u32(~88162u, 8u)]), Struct_1(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 1i), arg_0, -1444i), vec2<f32>(_wgslsmith_f_op_f32(297f * 676f), _wgslsmith_f_op_f32(abs(-1916f))), vec4<u32>(firstLeadingBit(u_input.c.x), u_input.a, u_input.c.x, _wgslsmith_add_u32(u_input.a, 1u))), Struct_1(~vec3<i32>(arg_0, 18644i, 11193i), vec2<f32>(_wgslsmith_f_op_f32(sign(-660f)), 561f), vec4<u32>(u_input.c.x, u_input.c.x ^ 18816u, 23578u, reverseBits(u_input.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-730f, 941f), _wgslsmith_f_op_f32(f32(-1f) * -1252f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_div_f32(-517f, -702f)))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(5886i, -arg_0, u_input.d.x ^ -34108i), arg_0, -max(u_input.d.x, u_input.d.x), _wgslsmith_div_i32(abs(0i), _wgslsmith_div_i32(23783i, arg_0))), vec4<i32>(u_input.d.x, 1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(46115i, u_input.d.x, -2147483647i, 20009i) & vec4<i32>(80728i, arg_0, arg_0, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -45869i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))))), Struct_2(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(78834u, 8u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(88873u, 8u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], false), global0[_wgslsmith_index_u32(u_input.b, 8u)])), Struct_1(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-14945i, u_input.d.x, -18738i), vec3<i32>(2147483647i, 31961i, arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, 1366f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1071f, -550f), vec2<f32>(-845f, -310f))), select(vec4<u32>(4294967295u, 31036u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.c.x, 1u), vec4<bool>(global0[_wgslsmith_index_u32(20844u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(6136u, 8u)], true)) << (vec4<u32>(u_input.b, 28228u, 22824u, 0u) % vec4<u32>(32u))), Struct_1(max(-vec3<i32>(62208i, -1i, 0i), ~vec3<i32>(29597i, 6890i, u_input.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 897f) + vec2<f32>(-1146f, -609f))), ~(~vec4<u32>(u_input.a, u_input.b, u_input.c.x, 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(187f * -1959f), _wgslsmith_f_op_f32(min(-2366f, 1219f))))));
    global2 = array<Struct_5, 5>();
    global0 = array<bool, 8>();
    var var_1 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(~69195u, _wgslsmith_mult_u32(var_0.a.b.c.x, u_input.b)), min(firstTrailingBit(var_0.a.b.c.ww), u_input.c.zx)), ~vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(62049u, var_0.c.c.c.x)), 1u | var_0.c.b.c.x));
    let var_2 = Struct_2(select(select(select(!var_0.a.a, !vec2<bool>(var_0.e.a.x, var_0.c.a.x), select(vec2<bool>(var_0.a.a.x, global0[_wgslsmith_index_u32(21683u, 8u)]), var_0.a.a, vec2<bool>(var_0.e.a.x, false))), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)]), vec2<bool>(false, true), var_0.e.a), global0[_wgslsmith_index_u32(countOneBits(53343u) >> (var_1.x % 32u), 8u)]), !var_0.a.a, !var_0.e.a), Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(var_0.e.b.a), min(vec3<i32>(var_0.a.b.a.x, -1i, 4925i), var_0.d.wwx)) ^ firstTrailingBit(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)), vec2<f32>(1221f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2616f))))), ~(~(var_0.c.b.c >> (vec4<u32>(68868u, u_input.a, 41096u, var_1.x) % vec4<u32>(32u))))), var_0.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.e.b.b.x + 317f), 356f)));
    return Struct_1(_wgslsmith_clamp_vec3_i32(~var_0.d.www, min(-select(vec3<i32>(26998i, -1i, u_input.d.x), var_2.b.a, var_0.c.a.x), abs(var_2.c.a)), var_0.c.b.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1457f, -1284f), _wgslsmith_f_op_vec2_f32(-var_2.b.b), select(var_0.c.a, var_2.a, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_0.e.a.x, var_2.a.x, false))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1521f, var_0.c.b.b.x), var_2.b.b))))), ~var_2.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, 1000f, -2444f, -317f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1313f))), 1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), _wgslsmith_f_op_f32(func_1()))));
    let var_1 = func_2(u_input.d.x);
    let var_2 = Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(44013u, 8u)], any(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(860u, 8u)], global0[_wgslsmith_index_u32(87194u, 8u)]))), func_2(~_wgslsmith_mult_i32(22864i, 60384i)), var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_div_f32(-1000f, var_0.x)) - vec2<f32>(var_0.x, -239f))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(-1i, 9865i), reverseBits(var_1.a.x), reverseBits(var_1.a.x)) | _wgslsmith_div_vec3_i32(var_1.a, firstLeadingBit(var_1.a)), ~vec3<i32>(~u_input.d.x, -59574i, -9502i)), Struct_2(!vec2<bool>(false || global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(var_1.c.x | u_input.a, 8u)]), Struct_1(vec3<i32>(0i, 24900i, u_input.d.x) ^ (var_1.a >> (var_1.c.yyw % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1232f))), ~(~var_1.c)), Struct_1(~(-var_1.a), _wgslsmith_f_op_vec2_f32(trunc(func_2(-2147483647i).b)), vec4<u32>(var_1.c.x, u_input.c.x, 39309u, var_1.c.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, 0u, u_input.a, 26524u), vec4<u32>(0u, var_1.c.x, 0u, 4294967295u)) % vec4<u32>(32u))), var_0.xy), select(select(abs(vec4<i32>(-1i, u_input.d.x, 8809i, var_1.a.x)), min(vec4<i32>(-34125i, 2147483647i, -1i, 57651i), vec4<i32>(u_input.d.x, -84527i, u_input.d.x, 0i)), any(vec2<bool>(true, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(var_1.a.x, -11367i, -40153i, 17795i), -vec4<i32>(var_1.a.x, var_1.a.x, u_input.d.x, var_1.a.x)), true) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, u_input.d.x, _wgslsmith_add_i32(u_input.d.x, -66213i), _wgslsmith_clamp_i32(var_1.a.x, -2147483647i, u_input.d.x)), vec4<i32>(_wgslsmith_mod_i32(-538i, 2147483647i), _wgslsmith_mult_i32(7312i, u_input.d.x), var_1.a.x ^ -7237i, 1i)), Struct_2(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], true), !select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_1.c.x, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(41717u, 8u)], true), true), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]))), Struct_1(~vec3<i32>(var_1.a.x, 2147483647i, u_input.d.x) | ~vec3<i32>(var_1.a.x, -1i, u_input.d.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_0.x)))), ~var_1.c), func_2(-var_1.a.x), var_0.zz));
    global0 = array<bool, 8>();
    var var_3 = var_2;
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~var_3.c.b.c.x), 4294967295u, ~var_1.c.x));
}

