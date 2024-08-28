struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: vec3<i32> = vec3<i32>(-48233i, -53031i, -23926i);

var<private> global2: vec3<i32> = vec3<i32>(64036i, 0i, i32(-2147483648));

var<private> global3: Struct_4;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = vec4<f32>(1205f, global4.e.x, -2103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(global4.c.x, 5950u) & u_input.a.x, 26u)]) * -1000f));
    var var_1 = Struct_2(select(abs(vec2<u32>(~4294967295u, ~u_input.c.x)), ~select(countOneBits(u_input.c), global4.c, !global4.d.zy), vec2<bool>(true, (global4.d.x && global4.d.x) && (596f == var_0.x))), _wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(global2.x, global4.b.x), global3.a.zy, all(global4.d.zz))), vec2<i32>(global3.a.x, 30140i)), vec4<i32>(abs(global4.b.x >> (u_input.b % 32u)) ^ global2.x, abs(global2.x), ~(1i & (1i & global4.b.x)), ~min(18282i, 36281i >> (u_input.c.x % 32u))), 34808i, vec2<i32>(-reverseBits(global1.x), global2.x));
    var var_2 = Struct_3(Struct_1(global4.e.zw, _wgslsmith_mult_vec3_i32(firstTrailingBit(global4.b), vec3<i32>(_wgslsmith_div_i32(0i, 225i), global4.b.x, -33766i)), vec2<u32>(_wgslsmith_mult_u32(~u_input.c.x, firstLeadingBit(var_1.a.x)), 1u), select(vec3<bool>(true, true, true), vec3<bool>(!global4.d.x, !global4.d.x, global3.b), true), var_0), Struct_1(var_0.zy, global4.b, vec2<u32>(_wgslsmith_div_u32(59457u, var_1.a.x & u_input.a.x), ~_wgslsmith_sub_u32(22213u, 1u)), select(vec3<bool>(true, var_1.a.x <= var_1.a.x, select(global4.d.x, true, true)), select(select(vec3<bool>(true, false, global4.d.x), vec3<bool>(false, true, global3.b), global4.d), select(vec3<bool>(false, true, false), global4.d, true), select(false, true, true)), global3.b), _wgslsmith_f_op_vec4_f32(select(global4.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * global4.e)), vec4<bool>(all(global4.d), false && global3.b, true, false)))), ~select(~var_1.a.x, ~u_input.b, all(select(vec4<bool>(global4.d.x, global4.d.x, true, true), vec4<bool>(false, global3.b, true, false), global3.b))), Struct_1(var_0.xx, vec3<i32>(1i, _wgslsmith_mult_i32(-25709i, 0i) | ~global3.a.x, global4.b.x), _wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(var_1.a.x, 22071u)), firstTrailingBit(~global4.c)), !global4.d, global4.e), Struct_2(abs(reverseBits(min(var_1.a, vec2<u32>(4294967295u, global4.c.x)))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global2.x, global1.x)), ~global1.yy), vec4<i32>(_wgslsmith_mod_i32(reverseBits(global1.x), _wgslsmith_dot_vec3_i32(global3.a, var_1.c.yyz)), ~(global2.x << (0u % 32u)), global3.a.x, _wgslsmith_mod_i32(0i, global1.x | var_1.b)), 1i, _wgslsmith_div_vec2_i32(var_1.c.wx, global2.xz)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.zw), ~global3.a, vec2<u32>(_wgslsmith_clamp_u32(1299u, _wgslsmith_sub_u32(u_input.b, 4294967295u), ~0u), firstLeadingBit(1u ^ u_input.b)), vec3<bool>(any(vec3<bool>(false, global3.b, true)), true, select(false, !global3.b, all(vec3<bool>(true, false, global4.d.x)))), global4.e), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.e.x, _wgslsmith_f_op_f32(-300f + global0[_wgslsmith_index_u32(var_2.a.c.x, 26u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 26u)], var_0.x))), -max(vec3<i32>(32473i, 0i, global1.x), ~vec3<i32>(global4.b.x, -1i, -80397i)), vec2<u32>(var_1.a.x ^ 1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 0u, 1u), vec3<u32>(var_2.a.c.x, 1u, var_1.a.x)))), global4.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global4.e.x, 118f)), _wgslsmith_f_op_vec4_f32(var_0 + var_0))), _wgslsmith_mult_u32(39995u, ~4294967295u), var_2.b, var_2.e);
    var var_4 = !(!vec4<bool>(var_2.a.d.x && any(vec4<bool>(var_3.b.d.x, global3.b, var_3.b.d.x, global4.d.x)), true, true, true));
    return global1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(vec3<i32>(43640i, -32730i, i32(-1i) * -59315i), 0u > ((global4.c.x >> (1u % 32u)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 48100u, 57056u, 4294967295u), u_input.a)), reverseBits(~(~(-1587i))));
    global3 = Struct_4(vec3<i32>(countOneBits(global2.x), ~(_wgslsmith_clamp_i32(global4.b.x, global2.x, global4.b.x) & (global4.b.x >> (global4.c.x % 32u))), _wgslsmith_div_i32(global1.x, abs(_wgslsmith_mod_i32(0i, global4.b.x)))), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(249f)), 377f, false)) >= -332f), global1.x);
    global1 = select(select(vec3<i32>(global2.x, _wgslsmith_mult_i32(global1.x, var_0.a.x) << (~0u % 32u), global2.x), abs(-(vec3<i32>(1i, global4.b.x, global1.x) | vec3<i32>(global4.b.x, global3.a.x, global4.b.x))), global3.b), vec3<i32>(func_3(), global2.x, ~var_0.a.x), false);
    global0 = array<f32, 26>();
    global1 = ~max(select(vec3<i32>(var_0.c, ~global4.b.x, firstLeadingBit(-2147483647i)), (global3.a & var_0.a) >> (u_input.a.wwz % vec3<u32>(32u)), false), vec3<i32>(global1.x, ~abs(-22840i), -268i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(global4.a)), vec3<i32>(firstLeadingBit(var_0.c), 0i, abs(firstLeadingBit(-22686i & global4.b.x))), max(select(~vec2<u32>(1u, 1u), (vec2<u32>(4294967295u, u_input.c.x) & global4.c) | global4.c, !(!global4.d.zx)), ~vec2<u32>(u_input.a.x, global4.c.x) << (u_input.a.yy % vec2<u32>(32u))), select(global4.d, !vec3<bool>(!var_0.b, false, true), select(!global4.d, !vec3<bool>(true, global4.d.x, true), select(false, true, global4.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.e.x, global0[_wgslsmith_index_u32(global4.c.x, 26u)], -2301f, global4.e.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global4.e), _wgslsmith_f_op_vec4_f32(ceil(global4.e)), vec4<bool>(true, true, global3.b, false)))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(global4.c.x & ~11846u), ~(~4294967295u), 0u);
    global4 = arg_0.d;
    global0 = array<f32, 26>();
    global4 = arg_0.d;
    var var_1 = Struct_4(vec3<i32>(-1i, ~global2.x, ~global4.b.x), any(func_2().d) & false, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~arg_2.c), global3.a.yx << (vec2<u32>(27969u << (1u % 32u), countOneBits(0u)) % vec2<u32>(32u))));
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_2(~u_input.c, max(_wgslsmith_add_i32(global4.b.x, 1i), 28358i), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, arg_2.b.b.x, 1i, arg_2.a.b.x) << (vec4<u32>(u_input.c.x, global4.c.x, 76465u, 0u) % vec4<u32>(32u)), ~arg_2.e.c, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.x, -1i, global1.x), arg_2.e.c))), -44959i, ~func_2().b.zx);
    global1 = var_0.c.zxx;
    var var_1 = global2.x;
    var_1 = 73410i;
    global1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(select(arg_2.d.b.x, ~var_0.d, !arg_1.x), -_wgslsmith_mult_i32(global1.x, global1.x)), -(~_wgslsmith_dot_vec3_i32(global3.a, var_0.c.xxw)), 53446i << (var_0.a.x % 32u)), -global4.b.x, abs(~countOneBits(global2.x)));
    return global4.e;
}

fn func_1() -> i32 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(global4.a.x, select(global4.d, select(vec3<bool>(!global4.d.x, global3.b, true), select(global4.d, vec3<bool>(global3.b, global3.b, false), !global4.d), vec3<bool>(true, global3.b, false)), select(vec3<bool>(global3.b, global3.b, global0[_wgslsmith_index_u32(global4.c.x, 26u)] >= global0[_wgslsmith_index_u32(global4.c.x, 26u)]), select(vec3<bool>(global4.d.x, false, global4.d.x), global4.d, select(vec3<bool>(global4.d.x, false, global4.d.x), global4.d, global4.d)), !vec3<bool>(global4.d.x, false, true))), func_4(Struct_3(Struct_1(global4.a, _wgslsmith_add_vec3_i32(global4.b, global3.a), _wgslsmith_mod_vec2_u32(global4.c, u_input.a.xz), global4.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, global0[_wgslsmith_index_u32(1u, 26u)], 243f, 1279f))), func_2(), _wgslsmith_mult_u32(_wgslsmith_div_u32(22691u, 1u), global4.c.x), Struct_1(_wgslsmith_div_vec2_f32(global4.a, vec2<f32>(-1843f, global4.e.x)), vec3<i32>(global1.x, global2.x, 65550i), u_input.a.wy, vec3<bool>(false, global4.d.x, global4.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global0[_wgslsmith_index_u32(35175u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 350f) - global4.e)), Struct_2(~vec2<u32>(u_input.a.x, 1u), func_2().b.x, _wgslsmith_div_vec4_i32(vec4<i32>(global4.b.x, global1.x, global2.x, -44874i), vec4<i32>(global1.x, 15957i, global3.a.x, 54608i)), 0i, max(global1.yy, vec2<i32>(global4.b.x, -7171i)))), global0[_wgslsmith_index_u32(1u, 26u)], Struct_4(_wgslsmith_sub_vec3_i32(global4.b, _wgslsmith_sub_vec3_i32(global4.b, global4.b)), false, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, -2147483647i), vec2<i32>(2147483647i, global3.a.x)))), u_input.a.zww));
    var var_1 = Struct_3(func_2(), func_2(), ~(~(~17928u >> (countOneBits(global4.c.x) % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.e.x, global4.a.x)) - vec2<f32>(global0[_wgslsmith_index_u32(30439u, 26u)], _wgslsmith_f_op_f32(-global4.a.x))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(global4.b.x, -29498i, global3.a.x), vec3<i32>(global1.x, global2.x, -2147483647i)) | -global3.a, countOneBits(func_2().b)), ~firstLeadingBit(~vec2<u32>(30568u, u_input.c.x)), !func_2().d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0)) - _wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(247f, global4.e.x, global4.a.x, global0[_wgslsmith_index_u32(global4.c.x, 26u)]), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1257f, -2411f, global4.a.x, -410f) - vec4<f32>(266f, -630f, 1599f, -584f)) - global4.e), !select(vec4<bool>(global3.b, true, false, true), vec4<bool>(global3.b, global4.d.x, global3.b, false), global4.d.x)))), func_4(func_4(Struct_3(Struct_1(global4.a, global3.a, vec2<u32>(global4.c.x, 26933u), vec3<bool>(true, global4.d.x, global3.b), var_0), func_2(), 4294967295u, Struct_1(vec2<f32>(-1000f, -1000f), vec3<i32>(global2.x, 2147483647i, 2147483647i), u_input.a.ww, global4.d, var_0), func_4(Struct_3(Struct_1(vec2<f32>(1000f, 427f), global4.b, global4.c, global4.d, global4.e), Struct_1(global4.a, vec3<i32>(-24611i, -13913i, 1i), global4.c, global4.d, vec4<f32>(-1108f, -307f, 1158f, var_0.x)), 1u, Struct_1(var_0.xx, vec3<i32>(global4.b.x, 1i, -5019i), vec2<u32>(1u, global4.c.x), global4.d, var_0), Struct_2(u_input.a.xw, 0i, vec4<i32>(1i, -27026i, global3.c, 3610i), global2.x, global2.xy)), -1000f, Struct_4(vec3<i32>(global4.b.x, -8512i, -2147483647i), global3.b, 50946i)).e), 1279f, Struct_4(-global3.a, global4.b.x >= 0i, global1.x << (global4.c.x % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2682f, 1000f)) + global0[_wgslsmith_index_u32(abs(1u), 26u)]), 841f)), Struct_4(global3.a, true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, -35630i, -1i, 2147483647i), vec4<i32>(global1.x, 1i, global4.b.x, global1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a.x, 2147483647i, -1i, 23478i), vec4<i32>(global4.b.x, global2.x, -2147483647i, -1i), vec4<i32>(global3.c, global4.b.x, 1i, 12836i))))).e);
    var var_2 = select(vec4<u32>(~var_1.a.c.x, abs(~_wgslsmith_dot_vec3_u32(u_input.a.wzy, u_input.a.zwy)), 0u, global4.c.x), u_input.a, select(!(!vec4<bool>(global4.d.x, true, true, false)), vec4<bool>(true, var_1.a.d.x, global4.d.x, true), vec4<bool>(var_1.d.d.x, true, global3.b, ~u_input.c.x >= var_1.b.c.x)));
    return ~(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    let var_1 = reverseBits(max(~select(vec3<i32>(-2147483647i, global4.b.x, -6047i), global4.b, global4.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(-57733i, 35218i, global3.a.x), vec3<i32>(global3.c, global1.x, 51790i) ^ vec3<i32>(-50521i, global3.c, global4.b.x), reverseBits(vec3<i32>(global4.b.x, -11782i, 2147483647i))))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~abs(1509u), global4.c.x, _wgslsmith_mult_u32(global4.c.x << (u_input.c.x % 32u), ~u_input.a.x)), vec3<u32>((1u ^ u_input.a.x) | ~20613u, 4294967295u, ~20231u)) % vec3<u32>(32u));
    global2 = -global3.a;
    var var_2 = Struct_2(~select(u_input.a.zw, global4.c, !select(global4.d.xx, global4.d.xz, true)), _wgslsmith_div_i32(firstTrailingBit(46781i), 0i), vec4<i32>(_wgslsmith_sub_i32(countOneBits(global1.x), global2.x) & 1i, func_1(), reverseBits(firstLeadingBit(global4.b.x) >> (~global4.c.x % 32u)), _wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -6985i), vec2<i32>(2147483647i, var_1.x)), reverseBits(var_1.yz), !vec2<bool>(global4.d.x, true)), ~abs(vec2<i32>(-71695i, -1i)))), func_2().b.x, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~min(global4.b.zx, global2.xy), -(~global2.zy)), abs(abs(~global1.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(41740u, global4.a.x);
}

