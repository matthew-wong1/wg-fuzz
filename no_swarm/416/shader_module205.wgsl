struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 54460u, 0u), vec3<i32>(i32(-2147483648), -28149i, -1i), Struct_1(1308f), 0u, Struct_1(1222f));

var<private> global2: array<u32, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.a, max(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.c, 1i, global1.b.x)), vec3<i32>(0i, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-28285i, u_input.a.x), global1.b.xx))) & ((vec3<i32>(-1i) * -vec3<i32>(arg_1.b, -49406i, u_input.a.x)) | -select(global1.b, vec3<i32>(14666i, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.c, arg_1.c))));
    global0 = 0u;
    var var_1 = u_input.a.x;
    global2 = array<u32, 16>();
    var var_2 = global2[_wgslsmith_index_u32(1u, 16u)];
    return countOneBits(_wgslsmith_clamp_vec2_u32(global1.a.zy, global1.a.xy, global1.a.xx));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    global1 = Struct_2(vec3<u32>(1u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.d, 16u)], 16u)] % 32u), (~u_input.b << (~0u % 32u)) >> (1u % 32u), ~min(~u_input.b, min(0u, global2[_wgslsmith_index_u32(global1.a.x, 16u)]))), vec3<i32>((~arg_1 & firstTrailingBit(u_input.c)) >> (17398u % 32u), -40896i, countOneBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1, -2147483647i, arg_1), select(u_input.c, -33531i, true), u_input.a.x))), global1.c, _wgslsmith_add_u32(global1.d, max(~global1.d, _wgslsmith_div_u32(countOneBits(47668u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~43780u, 16u)], 16u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.a, -117f)))));
    var var_0 = vec2<i32>(0i, -2147483647i);
    return Struct_4(_wgslsmith_div_i32(-1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, u_input.b) >> (vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(global1.d, 16u)]) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 28477u), vec2<u32>(global1.a.x, global2[_wgslsmith_index_u32(global1.d, 16u)]))) % 32u), u_input.a.x), _wgslsmith_mult_vec2_u32(func_3(-811f, Struct_3(global2[_wgslsmith_index_u32(1u, 16u)], countOneBits(u_input.a.x), false)), global1.a.xx), _wgslsmith_add_vec4_i32(vec4<i32>(~abs(u_input.c), countOneBits(~(-35062i)), _wgslsmith_mod_i32(global1.b.x & u_input.c, u_input.a.x), u_input.a.x), firstTrailingBit(firstTrailingBit(vec4<i32>(1i, global1.b.x, 9963i, var_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_4(Struct_2(arg_2.xww, ~global1.b, global1.e, u_input.b, Struct_1(1000f)), func_2(!vec3<bool>(false, false, arg_2.x < 4428u), -_wgslsmith_div_i32(4354i, max(global1.b.x, 2147483647i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.a, 155f) - vec2<f32>(1114f, global1.c.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-496f, -933f) * vec2<f32>(global1.c.a, 719f)))))), firstTrailingBit(min(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b), 16u)], _wgslsmith_div_u32(u_input.b, u_input.b)), vec2<u32>(func_3(global1.c.a, Struct_3(1u, 0i, false)).x, ~63619u))));
    global1 = Struct_2(min(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), var_0.b), ~43857u, ~var_0.b.x)), ~vec3<u32>(4294967295u, global1.d, 37503u) >> (~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], arg_2.x, 82938u)) % vec3<u32>(32u))), vec3<i32>(abs(_wgslsmith_div_i32(arg_1, var_0.c.x)) & var_0.a, -(~arg_1), -(var_0.a & (u_input.a.x & u_input.a.x))), Struct_1(global1.e.a), _wgslsmith_dot_vec4_u32(min(arg_2, vec4<u32>(0u, var_0.b.x, 39319u, 4294967295u)) & arg_2, min(arg_2, ~vec4<u32>(arg_2.x, u_input.b, arg_2.x, 1u))) << (4294967295u % 32u), Struct_1(-386f));
    global0 = var_0.b.x;
    global1 = Struct_2(vec3<u32>(25169u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13169u, 104766u, global1.a.x), vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 16u)], 4294967295u, global2[_wgslsmith_index_u32(106463u, 16u)])) ^ u_input.b, abs(1u)), global1.b, global1.e, 64238u, global1.c);
    global2 = array<u32, 16>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -266f), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -u_input.a.x);
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(global1.a, global1.a), global1.b, Struct_1(global1.e.a), 0u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(all(vec4<bool>(false, true, false, true)), -40790i, vec4<u32>(global2[_wgslsmith_index_u32(1u, 16u)], 10849u, u_input.b, global2[_wgslsmith_index_u32(0u, 16u)]) >> (vec4<u32>(1u, global2[_wgslsmith_index_u32(34319u, 16u)], 99032u, global1.d) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.a, global1.c.a)) * _wgslsmith_f_op_f32(trunc(-101f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a, var_2.e.a, -129f, var_2.e.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(341f, 248f, var_2.e.a, 966f))), vec4<bool>(true, false, false, false))))))));
    global0 = var_2.a.x;
    var_1 = ~var_2.b.x << ((global1.a.x << (abs(0u) % 32u)) % 32u);
    let var_4 = Struct_3(0u, -1i, true);
    var var_5 = Struct_4(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, 0i), select(func_4(Struct_2(vec3<u32>(0u, 51278u, var_2.d), global1.b, Struct_1(var_3.x), var_2.a.x, global1.e), Struct_4(var_4.b, vec2<u32>(1u, 17742u), vec4<i32>(var_2.b.x, -2147483647i, 33032i, 0i)), global1.a.zx).c.yy, firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)), !var_4.c)), -_wgslsmith_sub_i32(0i, global1.b.x)), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(24241u, u_input.b), ~var_2.a.zy, ~var_2.a.yz), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.a.xx, vec2<u32>(16492u, var_2.a.x)), reverseBits(vec2<u32>(global1.a.x, 33202u)))), func_4(var_2, func_4(Struct_2(vec3<u32>(var_2.d, var_2.a.x, global2[_wgslsmith_index_u32(5455u, 16u)]) >> (global1.a % vec3<u32>(32u)), vec3<i32>(0i, 28605i, -1i), var_2.c, var_4.a, Struct_1(114f)), Struct_4(~(-24264i), var_2.a.xx | vec2<u32>(4294967295u, 1u), select(vec4<i32>(global1.b.x, -1i, 2147483647i, 0i), vec4<i32>(var_4.b, 0i, var_2.b.x, -2147483647i), vec4<bool>(false, var_4.c, var_4.c, var_4.c))), vec2<u32>(~1u, firstLeadingBit(77227u))), firstLeadingBit(~global1.a.zy) | ~(~vec2<u32>(4294967295u, 11489u))).c);
    let var_6 = abs(min(firstTrailingBit(vec4<u32>(49000u, global2[_wgslsmith_index_u32(var_2.d & 0u, 16u)], max(29070u, 50566u), ~global1.a.x)), vec4<u32>(max(1u, 1u), 1u ^ var_5.b.x, 0u, firstTrailingBit(66823u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~reverseBits(45821u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 1u & var_4.a, reverseBits(31693u), _wgslsmith_mod_u32(4294967295u, 8167u)), ~(~vec4<u32>(4981u, global2[_wgslsmith_index_u32(var_2.a.x, 16u)], global2[_wgslsmith_index_u32(83258u, 16u)], 0u))), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(18184u, 119900u), ~(~1u)), ~1u));
}

