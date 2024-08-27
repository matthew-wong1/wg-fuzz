struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 20>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec4<bool>;

var<private> global4: Struct_1 = Struct_1(314f, 3887i, 87108u, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(-vec2<i32>(global4.b, global4.b), -vec2<i32>(11589i, u_input.c)) << (u_input.b.zy % vec2<u32>(32u)), select(vec2<i32>(15347i, u_input.d) ^ vec2<i32>(-2147483647i, global4.b), (vec2<i32>(global4.b, global4.b) | vec2<i32>(u_input.d, 28284i)) ^ vec2<i32>(-2147483647i, global4.b), global3.wy), global3.ww), vec2<i32>(u_input.d, u_input.c));
    var var_1 = !global3.xx;
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(-280f - -745f)))), -2147483647i, ~93219u, !(((u_input.a << (27768u % 32u)) < min(4294967295u, u_input.b.x)) | !(1u < global1[_wgslsmith_index_u32(4294967295u, 20u)])));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global4.a - 961f), global4.b, abs(0u), true);
    global1 = array<u32, 20>();
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = global4.c | func_3();
    global3 = vec4<bool>(!(!any(!vec2<bool>(global3.x, global3.x))), true, any(select(global3.yw, select(vec2<bool>(global3.x, false), select(global3.xw, global3.wz, false), select(vec2<bool>(global4.d, global4.d), vec2<bool>(global3.x, false), vec2<bool>(false, false))), select(select(vec2<bool>(global4.d, global3.x), global3.wx, true), !vec2<bool>(true, global3.x), !global3.xx))), !(!(select(global4.d, false, global4.d) && all(vec4<bool>(global4.d, global3.x, global3.x, global3.x)))));
    let var_1 = -1000f;
    global2 = u_input.d;
    var var_2 = u_input.b.zxy;
    return Struct_1(-678f, ~(~(1i >> (0u % 32u))), u_input.b.x, true);
}

fn func_1() -> Struct_3 {
    global3 = !(!vec4<bool>(global4.d, !global3.x, global4.d, !(!global4.d)));
    global2 = max(~global4.b, -12601i);
    global1 = array<u32, 20>();
    let var_0 = func_2();
    var var_1 = select(vec3<bool>(var_0.c > global4.c, global4.d, ~1i > u_input.d), global3.xzw, global3.yyx);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(f32(-1f) * -1126f))), -reverseBits(-518i), func_2().c, func_2().d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = func_1();
    var_1 = Struct_3(Struct_1(global0.x, _wgslsmith_add_i32(31690i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -881i), countOneBits(vec2<i32>(u_input.d, 1i)))), ~(~var_1.a.c), var_1.a.d));
    global0 = vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.a))));
    var var_2 = ~var_1.a.b;
    var var_3 = -16066i;
    let var_4 = func_1().a;
    let var_5 = vec2<u32>(max(7704u, 4294967295u), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(var_4.b, firstTrailingBit(u_input.d))), min(vec4<i32>(abs(11671i), select(1i, var_4.b, var_4.d), firstLeadingBit(2147483647i), 0i), vec4<i32>(var_1.a.b ^ global4.b, var_4.b, var_4.b >> (global1[_wgslsmith_index_u32(0u, 20u)] % 32u), var_4.b)) ^ firstLeadingBit(-max(vec4<i32>(-2453i, 2147483647i, 2147483647i, -2147483647i), vec4<i32>(var_4.b, 1i, u_input.d, 1i))), 80962i);
}

