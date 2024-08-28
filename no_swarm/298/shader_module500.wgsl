struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<i32>(50500i, 5250i, 8360i), -34173i, true, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 1131f, vec3<i32>(-16546i, -12211i, -11468i), vec3<f32>(-182f, 748f, -927f)), false, vec2<i32>(1i, -14669i));

var<private> global1: vec2<u32>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<Struct_3, 16>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = !global0.b.a.zx;
    let var_1 = ~_wgslsmith_mult_u32(firstTrailingBit(~global1.x) ^ countOneBits(~global1.x), max(_wgslsmith_mult_u32(u_input.a ^ u_input.b.x, 29702u), 1u));
    let var_2 = firstTrailingBit(vec2<i32>(~u_input.c, arg_0));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global0.b.c, firstTrailingBit(-(~vec3<i32>(0i, -22646i, 37830i)))), vec3<i32>(-2828i, select(u_input.c << (~1u % 32u), _wgslsmith_dot_vec2_i32(var_2 | vec2<i32>(0i, -1i), _wgslsmith_mod_vec2_i32(global2.zz, global2.yy)), true), -1895i));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> vec3<bool> {
    global4 = array<Struct_3, 16>();
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 16u)];
    var var_1 = firstTrailingBit(-2147483647i);
    var_0 = global4[_wgslsmith_index_u32(~arg_3.x, 16u)];
    global2 = firstTrailingBit(reverseBits(~_wgslsmith_div_vec3_i32(func_2(0i), ~arg_0.c)));
    return vec3<bool>(false, global0.c, false);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(vec3<bool>(!((i32(-1i) * -27411i) >= min(global2.x, 36186i)), arg_1.c, global0.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3553f - global0.b.b) - _wgslsmith_f_op_f32(exp2(arg_1.b.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.b, _wgslsmith_f_op_f32(step(arg_1.b.d.x, -1132f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b * global0.b.d.x) - 1040f))), -vec3<i32>(~u_input.c, abs(u_input.c), min(arg_1.d.x, arg_1.a.a.x)) >> (vec3<u32>(global1.x, u_input.b.x, ~global1.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.b.d + _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.d.x, -644f, global0.b.b), global0.b.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d.x, -1025f, -125f) - vec3<f32>(731f, global0.b.d.x, 296f)) + arg_1.b.d)))));
    global1 = u_input.b.zw;
    var var_1 = global0.a;
    var var_2 = var_0.d.yz;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(global0.a.a), vec3<i32>(_wgslsmith_sub_i32(global2.x, global0.b.c.x), i32(-1i) * -13063i, abs(global2.x))), _wgslsmith_clamp_vec3_i32(global0.a.a, global0.b.c, vec3<i32>(select(u_input.c, -2147483647i, false), u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))))), 2147483647i, all(vec2<bool>(_wgslsmith_div_u32(u_input.b.x, 4294967295u) == u_input.a, true)), !global0.a.d);
    global3 = array<Struct_1, 12>();
    global2 = var_0.a;
    global1 = vec2<u32>(reverseBits(global1.x), 9054u);
    global3 = array<Struct_1, 12>();
    var var_1 = Struct_1(select(!select(global0.a.d, func_1(global0.b, global1.x, global0.b.d.x, vec2<u32>(u_input.a, u_input.b.x)), vec3<bool>(global0.c, global0.a.c, false)), vec3<bool>(func_3(4294967295u, Struct_3(Struct_2(vec3<i32>(4277i, u_input.c, 2147483647i), 2147483647i, false, global0.a.d), Struct_1(vec3<bool>(true, true, false), global0.b.d.x, vec3<i32>(global0.d.x, global0.a.a.x, -2147483647i), global0.b.d), var_0.d.x, global0.b.c.xx)), var_0.d.x, func_1(Struct_1(var_0.d, global0.b.d.x, vec3<i32>(-37009i, var_0.b, 33057i), global0.b.d), _wgslsmith_mod_u32(4294967295u, 60449u), global0.b.d.x, u_input.b.wy).x), var_0.c), global0.b.b, ~select(select(global0.a.a, _wgslsmith_clamp_vec3_i32(var_0.a, global0.b.c, vec3<i32>(global0.a.a.x, u_input.c, -18988i)), true), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, var_0.a.x), global0.b.c), false), vec3<f32>(global0.b.d.x, _wgslsmith_f_op_f32(-global0.b.b), -103f));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b & vec4<u32>(u_input.a, ~32375u, _wgslsmith_add_u32(57463u, u_input.a), 41653u), ~u_input.b), _wgslsmith_f_op_vec3_f32(global0.b.d - vec3<f32>(257f, _wgslsmith_f_op_f32(ceil(global0.b.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.d.x - -1000f), -144f)))));
}

