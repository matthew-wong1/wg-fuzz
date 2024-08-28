struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-11836i, -1i, i32(-2147483648)));

var<private> global2: Struct_4 = Struct_4(Struct_3(vec2<f32>(-275f, -704f), vec2<u32>(4294967295u, 43213u), vec3<i32>(i32(-2147483648), -23201i, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(18588i, 1i, -41855i)))), true, vec3<i32>(23382i, 2147483647i, i32(-2147483648)), Struct_1(vec3<i32>(-1i, -22574i, -1i)));

var<private> global3: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    global3 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 1035f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, global2.a.a.x)) - -520f)), u_input.b.yz, vec3<i32>(_wgslsmith_add_i32(-21013i, 0i << (0u % 32u)), global1.a.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-7290i, global1.a.x, 3828i, 1i), vec4<i32>(global1.a.x, global1.a.x, -18496i, -1i)), global2.a.c.x, global2.b || global3.b)), Struct_2(global3.a.d.a)), ~(~(~u_input.a.x)) < ~max(global3.a.b.x, global2.a.b.x << (41340u % 32u)), _wgslsmith_add_vec3_i32(global3.a.c, select(vec3<i32>(global2.a.c.x, global2.c.x, 1482i), vec3<i32>(global1.a.x, 24128i, global3.d.a.x) | global1.a, vec3<bool>(false, false, true))) | global3.d.a, Struct_1(min(~vec3<i32>(global3.d.a.x, global3.d.a.x, global2.d.a.x), ~max(global3.a.c, global1.a))));
    let var_0 = global2.c.zx;
    let var_1 = Struct_2(global3.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, arg_0, global3.a.a.x, _wgslsmith_f_op_f32(1609f + global2.a.a.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.a.x), global2.a.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1135f))))), _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-302f))))), global2.a.a.x), vec4<bool>(global2.b & global2.b, !global2.b, any(select(!vec4<bool>(global3.b, global2.b, global3.b, false), vec4<bool>(true, false, global2.b, true), false)), true)));
    let var_3 = global3.a.d.a;
    return _wgslsmith_dot_vec3_i32(var_1.a.a, ~_wgslsmith_add_vec3_i32(abs(vec3<i32>(global2.c.x, global1.a.x, var_3.a.x)), min(vec3<i32>(-43108i, 0i, global3.d.a.x), vec3<i32>(0i, 2147483647i, global1.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> bool {
    global0 = array<vec3<u32>, 8>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(max(-1000f, arg_1))))), global2.a.a)), global2.a.b, global3.d.a, arg_0.a.d);
    var var_1 = var_0.d.a;
    let var_2 = false;
    var var_3 = global2.a.d.a;
    return global2.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = global3.a;
    global1 = var_0.d.a;
    global2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, global3.a.a.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, ~global2.a.b), var_0.b.x), -vec3<i32>(global3.a.d.a.a.x, _wgslsmith_clamp_i32(-1i, global1.a.x, -8714i), global1.a.x), global3.a.d), true, vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(countOneBits(global2.a.c), -vec3<i32>(global2.d.a.x, 2536i, var_0.c.x)), Struct_1(global1.a));
    global2 = Struct_4(global2.a, func_4(Struct_4(Struct_3(vec2<f32>(-157f, 1112f), reverseBits(vec2<u32>(0u, var_0.b.x)), abs(global1.a), global3.a.d), false, vec3<i32>(1i, func_3(-1355f), ~1i), global3.a.d.a), 255f), -global1.a, Struct_1(abs(-max(var_0.d.a.a, global1.a))));
    var var_1 = countOneBits(9535i);
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(max(global3.c, vec3<i32>(0i, global3.a.c.x, 2147483647i) >> (vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(var_0.c.x, global1.a.x), ~global3.c.x, countOneBits(44354i)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = ~vec4<i32>(global2.d.a.x, 1i, _wgslsmith_mod_i32(1i, ~global1.a.x << ((107044u ^ global3.a.b.x) % 32u)), 2147483647i);
    var var_1 = abs(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), ~(u_input.b.wzw << (vec3<u32>(30564u, 29996u, 55940u) % vec3<u32>(32u)))));
    global2 = Struct_4(global2.a, false, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(24925i, var_0.x), i32(-1i) * -global1.a.x, global1.a.x ^ global2.c.x), vec3<i32>(_wgslsmith_add_i32(-global1.a.x, -31881i), arg_0.a.a.x >> (1u % 32u), reverseBits(~16526i)), vec3<i32>(~global2.a.c.x, _wgslsmith_clamp_i32(~15182i, global3.a.c.x, func_2(vec3<u32>(59942u, u_input.b.x, 1u)).a.a.x), 35254i)), global2.a.d.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(562f)), global2.a.a.x, global2.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1068f)))))));
    var var_3 = vec4<i32>(-42277i, -10854i, global3.c.x, firstLeadingBit(2257i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.x + global2.a.a.x)))))));
}

fn func_1() -> Struct_3 {
    var var_0 = ~vec2<u32>(global2.a.b.x, u_input.b.x);
    var var_1 = 1f;
    var_1 = global3.a.a.x;
    let var_2 = -global1.a.x;
    var_1 = _wgslsmith_f_op_f32(step(global2.a.a.x, _wgslsmith_f_op_f32(func_5(func_2(reverseBits(~global0[_wgslsmith_index_u32(86693u, 8u)])), _wgslsmith_mod_u32(~(~0u), 1u)))));
    return global2.a;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    global2 = Struct_4(global2.a, !all(!vec4<bool>(global2.b, false, global2.b, global2.b)), abs(-vec3<i32>(1i, arg_1.d.a.a.x, 0i)), arg_1.d.a);
    return Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.a.x, -1i, arg_2.x, arg_2.x), -vec4<i32>(-1i, global2.a.c.x, arg_2.x, arg_2.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-12603i, 6333i), arg_1.d.a.a.x), global3.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2.a.b.x, func_1(), ~_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(global2.c.x, global3.a.d.a.a.x)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global1.a.yz, global1.a.yx), vec2<i32>(-2147483647i, 33788i) & global2.a.c.zz), _wgslsmith_div_vec2_i32(reverseBits(global3.a.c.zx), _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.c.x, -1i), global2.a.c.xz))));
    var var_1 = func_6(1u, Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-func_1().a))), global3.a.b >> (~vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec3<i32>(~70065i, -16281i, global1.a.x), global3.a.d), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(abs(4698i), 45729i ^ global3.c.x)), vec2<i32>(-2147483647i, (global2.d.a.x ^ 0i) ^ func_2(global0[_wgslsmith_index_u32(global2.a.b.x, 8u)]).a.a.x)));
    var var_2 = ~(~(-min(vec4<i32>(21668i, var_0.a.a.x, var_0.a.a.x, -2147483647i), vec4<i32>(39491i, 39393i, -31531i, var_0.a.a.x))) | ~(vec4<i32>(2147483647i, -67239i, var_0.a.a.x, global3.d.a.x) | -vec4<i32>(60969i, var_1.a.a.x, -2147483647i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.b.x, reverseBits(-33075i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.a.x))));
}

