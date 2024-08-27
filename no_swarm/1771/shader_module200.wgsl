struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-65548i, false, vec2<i32>(-59141i, -24155i), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), vec2<u32>(0u, 21204u)), Struct_1(vec3<u32>(4294967295u, 8577u, 0u)));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<u32>(82901u, 27655u, 0u)), vec2<u32>(14674u, 42564u)), Struct_2(Struct_1(vec3<u32>(1u, 742u, 15973u)), vec2<u32>(31494u, 27082u)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u)), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), vec2<u32>(53737u, 1602u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u)), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u)), vec2<u32>(2473u, 71419u)), Struct_2(Struct_1(vec3<u32>(1u, 56162u, 0u)), vec2<u32>(36030u, 0u)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 6250u)), vec2<u32>(53678u, 35495u)), Struct_2(Struct_1(vec3<u32>(0u, 72306u, 9731u)), vec2<u32>(0u, 42763u)), Struct_2(Struct_1(vec3<u32>(0u, 62506u, 1u)), vec2<u32>(4294967295u, 32568u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u)), vec2<u32>(77832u, 23903u)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 16745u)), vec2<u32>(4294967295u, 23349u)), Struct_2(Struct_1(vec3<u32>(0u, 1744u, 1u)), vec2<u32>(0u, 87270u)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u)), vec2<u32>(1u, 10736u)), Struct_2(Struct_1(vec3<u32>(1u, 40782u, 73329u)), vec2<u32>(0u, 40379u)), Struct_2(Struct_1(vec3<u32>(0u, 24484u, 1u)), vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u)), vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 58636u, 38849u)), vec2<u32>(27396u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(65218u, 1u, 1u)), vec2<u32>(0u, 32527u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec2<u32>(4294967295u, 64044u)), Struct_2(Struct_1(vec3<u32>(39058u, 24375u, 70637u)), vec2<u32>(2423u, 1u)), Struct_2(Struct_1(vec3<u32>(623u, 14575u, 26269u)), vec2<u32>(25591u, 48193u)), Struct_2(Struct_1(vec3<u32>(1u, 9234u, 33267u)), vec2<u32>(36688u, 1u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 41867u)), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(vec3<u32>(33551u, 15039u, 37453u)), vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u)), vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec3<u32>(45043u, 41652u, 1u)), vec2<u32>(1u, 45069u)), Struct_2(Struct_1(vec3<u32>(1u, 10378u, 1u)), vec2<u32>(43077u, 0u)), Struct_2(Struct_1(vec3<u32>(37163u, 17745u, 4294967295u)), vec2<u32>(25560u, 1u)), Struct_2(Struct_1(vec3<u32>(13706u, 4294967295u, 1u)), vec2<u32>(38581u, 37719u)), Struct_2(Struct_1(vec3<u32>(1u, 62784u, 0u)), vec2<u32>(0u, 1u)));

var<private> global2: vec4<f32> = vec4<f32>(626f, -1582f, 1000f, 1000f);

var<private> global3: array<vec2<f32>, 2>;

var<private> global4: i32 = -6900i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_mod_vec4_i32(countOneBits(max(vec4<i32>(min(0i, u_input.b.x), ~u_input.d, global0.c.x, arg_3.c.x), vec4<i32>(reverseBits(global0.c.x), _wgslsmith_sub_i32(u_input.d, -53466i), _wgslsmith_dot_vec2_i32(arg_3.c, vec2<i32>(global0.c.x, -1i)), global0.c.x | global0.c.x))), vec4<i32>(u_input.d, reverseBits(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d >> (1u % 32u), global0.c.x), -1522i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, -28884i), firstTrailingBit(arg_3.a)) & 1i));
    let var_2 = 0i;
    let var_3 = global0.e;
    let var_4 = Struct_2(arg_3.d.a, vec2<u32>(~arg_1.x, _wgslsmith_dot_vec2_u32(~arg_3.e.a.xx, abs(var_3.a.zy))) | var_3.a.xx);
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.e), u_input.e), vec4<u32>(var_3.a.x >> (var_4.a.a.x % 32u), 4294967295u, countOneBits(arg_2.a.x), 22467u), u_input.e), ~select(abs(~vec4<u32>(global0.d.b.x, arg_1.x, 137779u, 77531u)), _wgslsmith_add_vec4_u32(u_input.e, _wgslsmith_sub_vec4_u32(vec4<u32>(52217u, 35632u, global0.e.a.x, 23337u), u_input.c)), select(!arg_0, select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0, arg_0), vec4<bool>(false, true, arg_0.x, arg_3.b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    var var_0 = 20216u;
    var var_1 = arg_1;
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), -vec2<i32>(30574i, 0i), vec2<i32>(arg_2, u_input.b.x) ^ vec2<i32>(5655i, 2147483647i)), select(abs(-vec2<i32>(-2147483647i, 0i)), countOneBits(countOneBits(vec2<i32>(2147483647i, -2147483647i))), all(!vec4<bool>(global0.b, global0.b, global0.b, global0.b)))), true, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-reverseBits(u_input.b.yx), global0.c), global0.c), arg_1, Struct_1(vec3<u32>(min(arg_1.a.a.x, ~39121u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(4294967295u, arg_0.a.x, 43248u, 1360u)), u_input.e), ~func_3(vec4<bool>(true, false, true, false), arg_1.b, Struct_1(global0.e.a), Struct_3(u_input.b.x, false, u_input.b.yx, Struct_2(Struct_1(arg_0.a), vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(var_1.b.x, 0u, 6598u)))))));
    global4 = -14752i;
    var_0 = ~1u;
    return min(~vec3<u32>(1u, _wgslsmith_mult_u32(u_input.c.x, var_1.a.a.x), 4294967295u ^ var_2.e.a.x) >> (~vec3<u32>(~arg_0.a.x, ~0u, ~1703u) % vec3<u32>(32u)), var_1.a.a);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global4 = global0.c.x;
    var var_0 = select(firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.e.a.x, 9843u, 1u), vec3<u32>(36205u, u_input.a, global0.d.a.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(global0.d.b, global0.e.a.yy), ~4294967295u, ~u_input.c.x), func_2(Struct_1(vec3<u32>(46748u, 1u, global0.d.a.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30561u, 3429u, u_input.a), 32u)], global0.a))), func_2(global0.e, Struct_2(Struct_1(u_input.c.yyz), global0.e.a.xz), firstLeadingBit(0i)), global0.b);
    global3 = array<vec2<f32>, 2>();
    let var_1 = global0.d.a;
    var var_2 = Struct_3(_wgslsmith_sub_i32(arg_0.x, 69507i), false, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.zzy, vec3<i32>(29850i, -1i, -1i)) | abs(u_input.b), ~(~u_input.b)), global0.c.x), global1[_wgslsmith_index_u32(0u, 32u)], Struct_1(vec3<u32>(global0.e.a.x, ~(u_input.a ^ 1957u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 46883u, 108887u, var_1.a.x) | u_input.c, vec4<u32>(0u, 11573u, u_input.a, global0.d.b.x) & u_input.e))));
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(51569u, 8545u, 41369u), u_input.c.zzz), u_input.e.wwx) ^ vec3<u32>(var_1.a.x, var_2.d.b.x, 85026u)), var_2.e.a.yx | ~(~(~global0.e.a.xz)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, -889f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(min(387f, global2.x))) + global2.x), 348f));
    let var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_sub_i32(firstTrailingBit(u_input.d), 1i), _wgslsmith_sub_i32(abs(-2147483647i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global0.a, 50326i, -1i))), global0.c.x), vec4<i32>(-(global0.c.x & global0.c.x), _wgslsmith_mod_i32(~global0.a, -45169i), u_input.b.x, global0.c.x));
    let var_1 = Struct_3(u_input.d, global0.b, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(u_input.d, 34742i) ^ global0.c) ^ ~vec2<i32>(global0.a, var_0.x), global0.c), func_1(vec4<i32>(-var_0.x, -2147483647i, reverseBits(-var_0.x), _wgslsmith_div_i32(global0.c.x, 0i))), Struct_1(arg_1.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x));
    global0 = var_1;
    return Struct_3(reverseBits(reverseBits(-u_input.b.x)), false, vec2<i32>(abs(var_1.c.x), var_1.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(-(~countOneBits(vec4<i32>(1i, -31980i, -1i, global0.c.x)))), func_1(select(vec4<i32>(-global0.a, global0.c.x, i32(-1i) * -15395i, abs(global0.c.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 2147483647i, u_input.d), vec4<i32>(global0.a, -7037i, u_input.d, 0i)), select(vec4<bool>(true, global0.b, true, true), vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(false, global0.b, global0.b, global0.b)))).a);
    global4 = global0.c.x;
    var var_0 = global0.d.a;
    let var_1 = global0.b;
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, -1000f, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f))));
    let var_2 = Struct_3(_wgslsmith_mod_i32(global0.c.x, global0.a), global0.b, ~(-vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, -51639i, 0i), abs(1i))), Struct_2(func_4(Struct_2(func_1(vec4<i32>(u_input.d, u_input.b.x, -13688i, 2147483647i)).a, _wgslsmith_mod_vec2_u32(var_0.a.zz, global0.d.b)), Struct_1(vec3<u32>(55791u, u_input.a, 66289u) ^ u_input.e.wxz)).e, vec2<u32>(global0.d.a.a.x, ~(u_input.a >> (u_input.c.x % 32u)))), global0.e);
    var var_3 = ~(~(~_wgslsmith_add_u32(u_input.a, 19916u))) ^ ~(~(firstLeadingBit(23978u) | ~u_input.e.x));
    var var_4 = func_4(global0.d, func_1(select(vec4<i32>(0i, global0.c.x, 1i, global0.c.x) & vec4<i32>(-2147483647i, var_2.c.x, -1i, -54433i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, -2147483647i, var_2.c.x, -2681i), vec4<i32>(-9873i, -904i, u_input.d, global0.c.x), vec4<i32>(42120i, -2147483647i, -15981i, -16490i)), !(!vec4<bool>(false, global0.b, var_2.b, var_2.b)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

