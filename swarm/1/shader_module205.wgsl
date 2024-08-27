struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -863f;

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, false, false, true, false, true, false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, true, true, true);

var<private> global2: Struct_2 = Struct_2(0i, vec4<u32>(0u, 35435u, 50113u, 4294967295u), vec4<u32>(0u, 1u, 98205u, 1u));

var<private> global3: array<u32, 21>;

var<private> global4: Struct_2 = Struct_2(i32(-2147483648), vec4<u32>(85405u, 0u, 49092u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 118897u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = arg_3;
    let var_2 = arg_0;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-643f, -1175f)) + _wgslsmith_f_op_f32(step(570f, -1000f))) * -144f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(max(1164f, 111f))) - _wgslsmith_f_op_f32(f32(-1f) * -1191f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-491f, 695f)))));
    let var_3 = 1i;
    return 64206u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_i32(~(arg_1.d.zx & abs(vec2<i32>(-14263i, global2.a))), -arg_1.d.zx), arg_0.c, abs(~vec4<u32>(96424u, arg_1.a, firstLeadingBit(1u), ~4294967295u)));
    var var_1 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(3882i, _wgslsmith_mod_i32(-9569i, ~1i), abs(var_0.a), -_wgslsmith_div_i32(1i, -15970i)), vec4<i32>(-1i, 2147483647i ^ arg_0.a, global4.a, 1i)), Struct_1(global4.c.x, _wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, false)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global4.c.x), 25u)]))), ~global2.c.xwz, -vec3<i32>(-arg_0.a, global4.a, global4.a), firstTrailingBit(min(0i, var_0.a) >> (reverseBits(19303u) % 32u))), Struct_1(select(select(4294967295u ^ global4.b.x, arg_0.b.x, true), abs(global4.c.x), true), _wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -379f), true)), ~var_0.c.zxx, _wgslsmith_add_vec3_i32(arg_1.d >> (firstLeadingBit(vec3<u32>(16987u, u_input.b, 18219u)) % vec3<u32>(32u)), vec3<i32>(-1i, 1i, 13525i)), (30404i >> (firstTrailingBit(arg_1.a) % 32u)) << (~firstTrailingBit(1u) % 32u)), !(!(global1[_wgslsmith_index_u32(1u, 25u)] | true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b + arg_1.b))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b))) - _wgslsmith_f_op_f32(f32(-1f) * -884f)));
    var_1 = Struct_3(var_1.a ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a, global2.a, arg_1.d.x, arg_1.d.x), -var_1.a), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4160u, reverseBits(var_0.c.x), _wgslsmith_add_u32(u_input.b, var_1.b.a)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 20759u, global4.c.x), arg_1.c, vec3<bool>(global1[_wgslsmith_index_u32(var_1.c.a, 25u)], false, true)), vec3<u32>(59936u, u_input.b, var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))) * -2122f), arg_1.c, -vec3<i32>(arg_1.d.x, global4.a, countOneBits(var_1.b.e)), -abs(global2.a)), var_1.b, any(select(select(select(vec3<bool>(var_1.d, false, global1[_wgslsmith_index_u32(108614u, 25u)]), vec3<bool>(true, var_1.e, var_1.d), true), vec3<bool>(global1[_wgslsmith_index_u32(99429u, 25u)], var_1.d, var_1.d), true), vec3<bool>(true, global1[_wgslsmith_index_u32(reverseBits(0u), 25u)], any(vec4<bool>(true, true, true, var_1.d))), 4294967295u > _wgslsmith_sub_u32(arg_0.b.x, global4.c.x))), global1[_wgslsmith_index_u32(14224u, 25u)]);
    let var_2 = var_1.a;
    global0 = arg_1.b;
    return 9990u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_3(max(-vec4<i32>(0i, global2.a, 20239i, global4.a) >> (select(global4.b, global4.c, vec4<bool>(true, arg_2.x, false, arg_2.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(-16869i, -2147483647i, global2.a, global2.a), vec4<i32>(-46840i, -2147483647i, global2.a, global2.a)), vec4<i32>(global4.a, global4.a, -54300i, -52760i))) & ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(global4.a, -54745i, global4.a, global4.a), vec4<i32>(4125i, global4.a, 61374i, -18143i))), Struct_1(~(~abs(0u)), arg_3.x, vec3<u32>(30425u & global4.c.x, arg_0.x, select(0u, func_2(vec2<bool>(false, arg_2.x), vec3<bool>(global1[_wgslsmith_index_u32(global2.b.x, 25u)], true, true), global4.c.x, Struct_2(17095i, global2.c, vec4<u32>(global4.b.x, 38560u, global4.b.x, 73175u))), false & global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec3<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(global4.a, global4.a, -14335i), vec3<i32>(global2.a, global4.a, 2147483647i)), vec3<i32>(global2.a, 16141i, global4.a)), 7456i, 1i ^ ~global2.a), global4.a), Struct_1(~0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1.x) * _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), ~u_input.a, min(vec3<i32>(1i, countOneBits(-1i), 0i), vec3<i32>(-1i) * -vec3<i32>(global4.a, -2554i, 70114i)), i32(-1i) * -(~global4.a)), false, !(arg_2.x != true));
    var var_1 = arg_0.x;
    global2 = Struct_2(30466i, countOneBits(global2.b), countOneBits(vec4<u32>(21084u, global3[_wgslsmith_index_u32(abs(~32135u), 21u)], u_input.a.x & _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(33330u, 21u)]), reverseBits(0u) | _wgslsmith_mod_u32(u_input.a.x, 4294967295u))));
    global2 = Struct_2(global4.a | min(var_0.c.e, 16062i), select(vec4<u32>(~(arg_0.x ^ 154u), func_3(Struct_2(var_0.a.x, vec4<u32>(1u, global2.b.x, global4.c.x, 27042u), global4.c), Struct_1(u_input.b, -1006f, vec3<u32>(1u, u_input.b, 88280u), vec3<i32>(14201i, 2147483647i, global4.a), 2147483647i)), max(~63455u, ~global3[_wgslsmith_index_u32(global4.b.x, 21u)]), ~28150u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(global2.c), ~vec4<u32>(global4.b.x, 1u, 4294967295u, 1u), vec4<u32>(56734u, 30887u, global2.b.x, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, global2.c.x, 0u, global3[_wgslsmith_index_u32(global2.b.x, 21u)]), vec4<u32>(21738u, arg_0.x, global2.b.x, global4.c.x))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.d, global1[_wgslsmith_index_u32(global4.b.x, 25u)], var_0.e, var_0.e), false), select(vec4<bool>(var_0.e, global1[_wgslsmith_index_u32(60362u, 25u)], false, true), vec4<bool>(arg_2.x, true, var_0.d, false), vec4<bool>(true, global1[_wgslsmith_index_u32(78040u, 25u)], arg_2.x, true)), vec4<bool>(true, true, true, var_0.d))), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u) >> (1u % 32u), firstTrailingBit(64498u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global4.c.x, 21u)], global2.b.x, 57572u), global4.b) | u_input.b, ~(arg_0.x << (global4.b.x % 32u))) >> (min(global2.c, vec4<u32>(1u, 16233u, abs(4294967295u), ~0u)) % vec4<u32>(32u)));
    var var_2 = reverseBits(~(~(-vec2<i32>(global2.a, 6921i))));
    return select(vec4<i32>(-22060i, -_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1676i), 1i, -_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_add_vec4_i32(var_0.a, var_0.a))), var_0.a, (all(!vec3<bool>(arg_2.x, false, var_0.e)) && global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 21u)] << (1u % 32u), 25u)]) && !any(select(vec3<bool>(false, false, arg_2.x), vec3<bool>(false, var_0.e, arg_2.x), vec3<bool>(arg_2.x, true, var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1705f;
    var var_0 = Struct_2(-2147483647i, firstTrailingBit(~firstLeadingBit(global2.b)) ^ vec4<u32>(global4.c.x, 4294967295u, global4.b.x, _wgslsmith_div_u32(global4.c.x, ~u_input.b)), vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, global3[_wgslsmith_index_u32(45443u, 21u)]), 1u)), abs(reverseBits(_wgslsmith_dot_vec3_u32(global2.c.ywx, vec3<u32>(0u, 38197u, u_input.a.x)))), global4.c.x, 49456u));
    var var_1 = _wgslsmith_mult_vec4_i32(~(func_1(~vec2<u32>(global4.c.x, u_input.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1388f, 2272f, 198f, 606f))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1147f, -807f, 1726f)))) | _wgslsmith_div_vec4_i32(abs(vec4<i32>(global4.a, global2.a, 7304i, global4.a)), vec4<i32>(global4.a, var_0.a, -15293i, global4.a))), vec4<i32>(var_0.a, var_0.a, ~global2.a, -1i));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.a, -22399i, -(-10969i >> (0u % 32u)) ^ select(reverseBits(1i), ~(-11989i), true)), ~(~select(~vec4<i32>(-1i, 3125i, 18006i, 2147483647i), vec4<i32>(var_1.x, var_0.a, global4.a, 2147483647i), !global1[_wgslsmith_index_u32(4294967295u, 25u)])));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1619f * -650f), _wgslsmith_f_op_f32(select(-886f, -1000f, global1[_wgslsmith_index_u32(0u, 25u)]))))) * _wgslsmith_f_op_f32(step(495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2073f)) + _wgslsmith_f_op_f32(f32(-1f) * -1103f))))));
    let var_4 = _wgslsmith_mult_u32(~(global4.c.x | global3[_wgslsmith_index_u32(0u, 21u)]), 34075u);
    var var_5 = Struct_2(1i, var_0.c, global4.b & ((vec4<u32>(global2.c.x, global3[_wgslsmith_index_u32(1u, 21u)], 4294967295u, global4.b.x) ^ (vec4<u32>(var_0.b.x, 62390u, global4.c.x, 73628u) >> (var_0.b % vec4<u32>(32u)))) << (vec4<u32>(min(var_0.b.x, 53505u), _wgslsmith_sub_u32(global2.c.x, global4.c.x), _wgslsmith_clamp_u32(24167u, 1u, global3[_wgslsmith_index_u32(58853u, 21u)]), ~4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(u_input.a.x, 4294967295u, u_input.b), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_5.c.x, 1u), vec3<u32>(1u, 5564u, 0u)), u_input.a), any(!vec4<bool>(global1[_wgslsmith_index_u32(var_4, 25u)], true, false, false))) & _wgslsmith_clamp_vec3_u32(~var_0.b.wyy, ~(vec3<u32>(4294967295u, var_4, var_4) << (var_5.c.zzw % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(global2.b.xzy, vec3<u32>(14272u, 4294967295u, 0u)) << (abs(global4.c.xyy) % vec3<u32>(32u))), abs(~(-vec4<i32>(var_1.x, global2.a, global2.a, global4.a) | vec4<i32>(44690i, 19497i, var_1.x, -3407i))), 31931i | (global4.a >> (_wgslsmith_mod_u32(12645u >> (var_0.c.x % 32u), func_2(vec2<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(10859u, 25u)], global1[_wgslsmith_index_u32(var_5.c.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]), 4294967295u, Struct_2(global4.a, global4.c, vec4<u32>(4294967295u, var_5.b.x, global4.c.x, var_4)))) % 32u)), _wgslsmith_f_op_f32(max(var_3, _wgslsmith_div_f32(2024f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + -1000f))))), vec3<u32>(var_5.c.x, min(global4.b.x, 14189u), global4.c.x));
}

