struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(23612u, 1u), vec2<u32>(84450u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(35341u, 41613u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(8464u, 4294967295u), vec2<u32>(13891u, 53287u), vec2<u32>(80552u, 63940u), vec2<u32>(0u, 4294967295u));

var<private> global1: array<f32, 1>;

var<private> global2: Struct_4 = Struct_4(vec3<i32>(30248i, -15675i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), Struct_3(Struct_2(true), vec4<i32>(13664i, 0i, 2147483647i, -19046i), vec3<f32>(1785f, -1000f, 601f)), vec4<u32>(24463u, 1u, 4294967295u, 33112u));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(313f, -2826f, 572f, 571f), vec4<i32>(2147483647i, 35684i, -22827i, 3137i), 4294967295u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> f32 {
    return global2.c.c.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    global0 = array<vec2<u32>, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -315f);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_2(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * global2.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(655f, 167f), Struct_2(false), Struct_1(vec4<f32>(global2.c.c.x, global1[_wgslsmith_index_u32(0u, 1u)], global3.a.x, -1000f), global2.c.b, global3.c), vec3<u32>(global2.d.x, 43177u, u_input.b)))), 363f))), _wgslsmith_add_vec4_i32(firstTrailingBit(-abs(vec4<i32>(u_input.a.x, global3.b.x, -9942i, u_input.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -33989i, 27347i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-49587i, 54087i, 2147483647i, global2.a.x), vec4<i32>(u_input.a.x, 6940i, -38672i, global2.b.x))) | (-global3.b | ~vec4<i32>(-19452i, global2.b.x, 5483i, 3794i))), ~firstLeadingBit(global3.c));
    var var_0 = ~(~global2.d.x);
    var var_1 = global2.c.a;
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global3.a)), _wgslsmith_add_vec4_i32(vec4<i32>(9603i, -1i, 2147483647i, countOneBits(global3.b.x)), vec4<i32>(u_input.a.x, min(-1i, -1i), i32(-1i) * -8893i, abs(-13580i))) & select(max(countOneBits(global3.b), -global2.c.b), _wgslsmith_mult_vec4_i32(global2.c.b << (vec4<u32>(73175u, global3.c, 0u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 53880i, u_input.a.x, global3.b.x)), true), 0u);
    global0 = array<vec2<u32>, 10>();
    return global2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    global2 = Struct_4(~global3.b.yxw, -vec2<i32>(_wgslsmith_dot_vec4_i32(global2.c.b, ~vec4<i32>(-13040i, 25091i, 1i, 2147483647i)), u_input.a.x), global2.c, global2.d);
    global0 = array<vec2<u32>, 10>();
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1028f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(60426u, 1u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -114f)), global2.c.c.x, 1131f), _wgslsmith_sub_vec4_i32(global3.b << (global2.d % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(global3.b, ~vec4<i32>(2147483647i, 7408i, u_input.a.x, 42172i), global3.b)), ~(~(global3.c << (3758u % 32u))));
    var var_1 = select(select(!select(!vec4<bool>(var_0.a, var_0.a, false, global2.c.a.a), !vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, false, var_0.a, false)), vec4<bool>(all(select(vec4<bool>(var_0.a, global2.c.a.a, var_0.a, true), vec4<bool>(true, global2.c.a.a, false, true), vec4<bool>(true, global2.c.a.a, false, var_0.a))), true != !var_0.a, var_0.a, !all(vec3<bool>(false, global2.c.a.a, global2.c.a.a))), true), vec4<bool>(all(!vec2<bool>(var_0.a, false)), true | (var_0.a && true), func_1(func_1(var_0.a & var_0.a).a).a, false), !global2.c.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], -257f, global3.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(415f, 528f, global2.c.c.x) * vec3<f32>(-997f, global1[_wgslsmith_index_u32(global2.d.x, 1u)], -270f)), var_1.zzy)))))));
}

