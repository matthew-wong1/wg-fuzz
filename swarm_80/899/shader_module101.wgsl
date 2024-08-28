struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<i32, 19> = array<i32, 19>(1i, -43320i, -1i, -19947i, 1i, -41581i, -1i, 1i, 4152i, -17284i, 0i, 1i, 1i, -37460i, -5860i, 2147483647i, i32(-2147483648), -16365i, -9039i);

var<private> global3: Struct_2 = Struct_2(vec3<u32>(5044u, 87319u, 48200u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(~(~vec4<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 19u)], firstTrailingBit(u_input.b), 24468i, -2147483647i)), 24256i, !(!arg_0));
    let var_1 = vec2<u32>(arg_2.a.x, arg_3.a.x) << (min(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(17455u, 0u), global3.a.yz), vec2<u32>(global3.a.x, 47641u), vec2<u32>(u_input.a, 21574u)) >> (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)), u_input.c.yy) % vec2<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(-min(_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(0i, var_0.a.x, -1i, u_input.b)), -var_0.a), abs(abs(vec4<i32>(-32379i, -2147483647i, var_0.a.x, var_0.b)))), 17507i, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, arg_1, _wgslsmith_div_f32(arg_1, -1520f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    var var_4 = arg_3;
    return vec2<bool>(false, _wgslsmith_mod_i32(var_2.b, select(-global2[_wgslsmith_index_u32(arg_2.a.x, 19u)], firstTrailingBit(-4121i), var_1.x <= var_4.a.x)) > -12063i);
}

fn func_2() -> vec4<i32> {
    global3 = global1[_wgslsmith_index_u32(~(~4294967295u), 12u)];
    global2 = array<i32, 19>();
    let var_0 = vec4<bool>(all(select(vec2<bool>(true, true), func_3(true, 1f, global1[_wgslsmith_index_u32(reverseBits(global3.a.x), 12u)], Struct_2(u_input.c)), !(u_input.b == -1i))), !(min(0u, _wgslsmith_add_u32(u_input.a, u_input.d)) < _wgslsmith_div_u32(u_input.d, reverseBits(global3.a.x))), select(all(vec4<bool>(true, true, true, true)) | select(false, true, false), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(true, true, true))), true), true);
    global0 = ~_wgslsmith_div_vec4_i32(abs(select(abs(vec4<i32>(global0.x, 13905i, -26581i, 84874i)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 19u)], u_input.b, global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 22530i), !var_0)), reverseBits(vec4<i32>(-1i >> (0u % 32u), min(2147483647i, 1i), 2147483647i, min(-27444i, -11141i))));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(abs(global3.a.x), 19u)], ~global0.x, 25592i, firstLeadingBit(u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 70276u, 0u, 0u), vec4<u32>(u_input.a, u_input.d, 4294967295u, 85402u)) % 32u)), vec4<i32>(~u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.a.x, 1u, u_input.c.x), 19u)], u_input.b, _wgslsmith_clamp_i32(global0.x, 2147483647i, 1i)) | (min(vec4<i32>(u_input.b, -36725i, u_input.b, 8262i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(24268u, 19u)], global2[_wgslsmith_index_u32(global3.a.x, 19u)], global0.x)) | vec4<i32>(global0.x, 8126i, u_input.b, global2[_wgslsmith_index_u32(23734u, 19u)]))), -u_input.b, true);
    return vec4<i32>(global0.x, _wgslsmith_clamp_i32(1i, abs(-41752i), -2147483647i), reverseBits(46723i), ~(-11615i));
}

fn func_1() -> u32 {
    global0 = select(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, -1i, -2147483647i), vec4<i32>(22006i, 42850i, -2147483647i, -2147483647i)) ^ firstTrailingBit(select(vec4<i32>(u_input.b, u_input.b, global0.x, u_input.b), vec4<i32>(-1i, u_input.b, -6665i, u_input.b), true))), func_2(), false == (u_input.b > ~(-2147483647i)));
    global1 = array<Struct_2, 12>();
    var var_0 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(~(~vec2<u32>(30702u, global3.a.x))), ~_wgslsmith_sub_vec2_u32(select(u_input.c.zy, u_input.c.xz, true), ~global3.a.zx));
    var var_1 = global1[_wgslsmith_index_u32(~(~(~1u) ^ ~_wgslsmith_mod_u32(countOneBits(global3.a.x), ~63934u)), 12u)];
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(select(1u, _wgslsmith_mod_u32(select(u_input.a, u_input.d, all(vec4<bool>(true, true, true, false))), 9002u), false)), 12u)];
    return _wgslsmith_clamp_u32(u_input.a, u_input.a ^ _wgslsmith_mult_u32(~_wgslsmith_div_u32(114753u, 22452u), 15686u << (var_2.a.x % 32u)), 15242u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(~(~(func_1() & _wgslsmith_div_u32(global3.a.x, global3.a.x))), 12u)];
    let var_0 = !all(vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)) && true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false));
    let var_1 = Struct_2(u_input.c);
    global3 = Struct_2(global3.a);
    let var_2 = var_1;
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(-(~(-1i)), global2[_wgslsmith_index_u32(0u, 19u)], abs(~(-5449i)), ~max(global0.x, -32180i)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1.a.x, 1u, 1u) | vec4<u32>(var_1.a.x, global3.a.x, var_2.a.x, 0u), ~vec4<u32>(25383u, u_input.a, 73552u, global3.a.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(select(-func_2(), -vec4<i32>(-1i, -14543i, u_input.b, global2[_wgslsmith_index_u32(30887u, 19u)]) >> (abs(vec4<u32>(0u, var_1.a.x, var_1.a.x, 43290u)) % vec4<u32>(32u)), select(!vec4<bool>(false, true, false, var_0), vec4<bool>(true, true, true, true), vec4<bool>(var_0, true, var_0, var_0))), vec4<i32>(u_input.b, select(-15996i, abs(-2147483647i), false), global2[_wgslsmith_index_u32(~var_2.a.x, 19u)], _wgslsmith_sub_i32(global0.x, max(global2[_wgslsmith_index_u32(u_input.a, 19u)], 1i))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(48544i, global2[_wgslsmith_index_u32(var_2.a.x, 19u)], global0.x, global0.x), vec4<i32>(1i, -90795i, 17492i, global2[_wgslsmith_index_u32(14924u, 19u)])), min(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global0.x, u_input.b, u_input.b), vec4<i32>(-4143i, global0.x, 0i, 2147483647i)), vec4<i32>(35127i, 2147483647i, u_input.b, -1i))));
    global2 = array<i32, 19>();
    global2 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.x << (abs(0u) % 32u), var_2.a.x);
}

