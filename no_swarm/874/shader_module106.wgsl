struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(0u, 23455u), vec2<i32>(43501i, 22866i), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 28975u), vec2<i32>(0i, 1i), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(1u, 13097u), vec2<i32>(28473i, -2982i), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(0u, 0u), vec2<i32>(-14404i, -24784i), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 20444u), vec2<i32>(-50685i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(1u, 1u), vec2<i32>(0i, -65780i), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(59445u, 45937u), vec2<i32>(-33622i, -16568i), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4209u, 41192u), vec2<i32>(-16862i, 1i), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(81588u, 0u), vec2<i32>(0i, 51624i), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 28647u), vec2<i32>(-1i, 7910i), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(8198u, 4294967295u), vec2<i32>(30605i, 1i), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(28231u, 4294967295u), vec2<i32>(14797i, -1i), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(57741u, 20366u), vec2<i32>(-1i, -2839i), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(19369u, 1u), vec2<i32>(2147483647i, -2815i), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(1u, 4294967295u), vec2<i32>(40743i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 4294967295u), vec2<i32>(79118i, 54597i), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(2962u, 4294967295u), vec2<i32>(2825i, i32(-2147483648)), vec3<bool>(false, true, true)));

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<f32, 8> = array<f32, 8>(-772f, -535f, 2137f, -556f, 597f, -1763f, -801f, -1048f);

var<private> global4: Struct_2 = Struct_2(819f, 701f, vec2<i32>(-2410i, 21103i), vec3<u32>(55479u, 1u, 4294967295u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = vec2<bool>(arg_0.a.a.x | false, !(_wgslsmith_sub_i32(arg_0.b, global4.c.x) >= (abs(53652i) << ((arg_1 >> (23937u % 32u)) % 32u))));
    return !(!any(arg_0.a.d) || arg_0.a.a.x);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = max(~_wgslsmith_div_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.c, global4.c.x, arg_0), vec4<i32>(-1i, -17399i, u_input.c, arg_0))), ~vec4<i32>(arg_0, 1i, 12110i, 2147483647i) << (abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, global4.d.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(-(~arg_0), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -61756i, arg_0), _wgslsmith_add_i32(u_input.d.x, 1i)), i32(-1i) * -1i, ~u_input.d.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0, 5231i, u_input.d.x, 30940i), firstLeadingBit(vec4<i32>(arg_0, 37339i, 39993i, global4.c.x))), -vec4<i32>(0i, global4.c.x, 1i, 1i))));
    global0 = array<Struct_1, 18>();
    let var_1 = true;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(~10155u) << (global4.d.x % 32u), _wgslsmith_dot_vec3_u32(global4.d >> (global4.d % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.d.x, u_input.e, 4294967295u), global4.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.e, 10283u), global4.d), vec3<u32>(13594u, global4.d.x, 11209u)))), 18u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(max(~vec3<i32>(-17042i, 2147483647i, 67309i), u_input.d << (vec3<u32>(1829u, 0u, 0u) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.d, var_0.yww))), global4.c.x));
    let var_3 = true;
    return vec3<bool>(false, var_3, var_1);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], (arg_1.b & _wgslsmith_sub_i32(max(global4.c.x, global4.c.x), global4.c.x)) & ~(-1238i));
    let var_1 = !func_3(~select(1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_2.d.b, global4.c.x, 50964i)), func_2(var_0, 4294967295u, arg_2.a)));
    var var_2 = Struct_1(arg_1.a.a, _wgslsmith_sub_vec2_u32(arg_2.d.a.b, _wgslsmith_add_vec2_u32(~arg_1.a.b, vec2<u32>(global4.d.x, ~0u))), reverseBits(reverseBits(u_input.d.xx) >> (select(vec2<u32>(3491u, global4.d.x), vec2<u32>(global4.d.x, var_0.a.b.x), arg_0) % vec2<u32>(32u))), !var_0.a.a.zzz);
    let var_3 = u_input.d;
    let var_4 = Struct_4(-164f, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global4.c.x, -2147483647i), global4.c, -var_3.xy), vec2<i32>(2147483647i, firstTrailingBit(3309i))) >> (max(reverseBits(global4.d.x | arg_2.c.x), ~global4.d.x) % 32u), ~arg_2.c, var_0, select(arg_1.a.a, var_2.a, vec4<bool>(true | !arg_1.a.a.x, false, var_1.x, !any(var_0.a.a))));
    return vec4<u32>(57589u, _wgslsmith_div_u32(14652u, 46785u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~var_4.c, var_4.c), ~var_4.c) ^ _wgslsmith_mult_u32(var_2.b.x, ~8365u | _wgslsmith_mult_u32(4294967295u, u_input.b)), 1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = u_input.a < 1u;
    global0 = array<Struct_1, 18>();
    global4 = Struct_2(global3[_wgslsmith_index_u32(countOneBits(u_input.a), 8u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(147f * -1000f), _wgslsmith_f_op_f32(step(973f, global4.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, -1770f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 8u)]) + -510f)))), vec2<i32>(-global4.c.x, 44133i), vec3<u32>(u_input.b, ~(~47821u), global4.d.x));
    var var_1 = -u_input.d.x;
    let var_2 = global4.c.x;
    return global4.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(max(func_4(global4.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 41057u, 12948u, u_input.b)), func_1(vec2<bool>(false, true), Struct_3(Struct_1(global1[_wgslsmith_index_u32(global4.d.x, 32u)], global4.d.xy, global4.c, vec3<bool>(false, true, true)), -2147483647i), Struct_4(global3[_wgslsmith_index_u32(44994u, 8u)], u_input.c, vec4<u32>(1u, 1u, u_input.a, 1u), Struct_3(Struct_1(global1[_wgslsmith_index_u32(92629u, 32u)], global4.d.yy, global4.c, vec3<bool>(false, false, true)), global4.c.x), global1[_wgslsmith_index_u32(u_input.e, 32u)]), 1036f)), 32u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(207f, global3[_wgslsmith_index_u32(1u, 8u)]) * vec2<f32>(global4.b, 565f)))), 4294967295u), ~u_input.b, global4.d.yz, abs(abs(select(vec4<i32>(global4.c.x, u_input.c, -2147483647i, global4.c.x), vec4<i32>(u_input.d.x, -1i, 1i, u_input.c), false))) & abs(reverseBits(~vec4<i32>(global4.c.x, 2147483647i, -1i, global4.c.x))));
}

