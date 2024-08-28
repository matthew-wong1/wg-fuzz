struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37721u;

var<private> global1: Struct_3 = Struct_3(4294967295u, vec4<bool>(true, false, true, true), vec4<u32>(83781u, 4376u, 26043u, 4294967295u), vec2<i32>(2147483647i, 55026i), vec3<i32>(-76501i, i32(-2147483648), 2147483647i));

var<private> global2: array<vec4<u32>, 22>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> f32 {
    global0 = 0u;
    let var_0 = countOneBits(abs(~global1.c.ww));
    global2 = array<vec4<u32>, 22>();
    let var_1 = ~u_input.b;
    global2 = array<vec4<u32>, 22>();
    return -191f;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(635f, -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(-1372f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1544f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, -981f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(-272f, -2571f))))), vec2<bool>(select(all(vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x)), false, firstTrailingBit(arg_0) <= ~0i), false), vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(32223u, 1u, 0u, 7164u) ^ vec4<u32>(70940u, global1.c.x, 65064u, global1.a)) | ~vec4<u32>(global1.a, global1.c.x, 4294967295u, global1.a), ~vec4<u32>(global1.a, u_input.a.x, global1.a, 1u)), ~global1.c.x));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = select(vec4<bool>(~u_input.a.x > 4294967295u, func_1(~global1.e.x, i32(-1i) * -17404i).c.x, func_1(abs(0i), u_input.b.x & _wgslsmith_sub_i32(-43221i, -2147483647i)).c.x, true), !(!(!select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), vec4<bool>(arg_0.c.x, false, global1.b.x, false), global1.b))), global1.b);
    let var_1 = select(select(select(select(vec4<bool>(false, global1.b.x, var_0.x, false), global1.b, true), select(vec4<bool>(true, arg_0.c.x, true, false), vec4<bool>(false, global1.b.x, arg_0.c.x, true), !global1.b.x), !select(global1.b, vec4<bool>(var_0.x, global1.b.x, var_0.x, true), vec4<bool>(global1.b.x, true, global1.b.x, true))), vec4<bool>(select(true, global1.b.x, 4294967295u < u_input.a.x), global1.b.x, false, true), global1.b.x), !select(vec4<bool>(true, arg_0.c.x, var_0.x, true), vec4<bool>(arg_0.c.x, global1.b.x, arg_0.b.a.x == arg_0.b.a.x, all(vec3<bool>(arg_0.c.x, true, global1.b.x))), var_0), false);
    let var_2 = func_1(-22920i, _wgslsmith_mod_i32(min(max(u_input.b.x, 23914i), _wgslsmith_mod_i32(global1.e.x, ~u_input.b.x)), max(min(1i, 1i), global1.e.x))).b;
    global2 = array<vec4<u32>, 22>();
    let var_3 = -_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(global1.e << (vec3<u32>(4294967295u, u_input.a.x, arg_0.d.x) % vec3<u32>(32u)), global1.e >> (global1.c.wwx % vec3<u32>(32u))), -global1.e);
    return 74579u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 22>();
    var var_0 = vec2<u32>(select(~(~global1.a << (_wgslsmith_clamp_u32(6700u, 4294967295u, 50385u) % 32u)), ~global1.a, (global1.b.x | all(global1.b)) | true), _wgslsmith_div_u32(1u, u_input.a.x) & ~1u);
    var var_1 = !global1.b;
    var var_2 = Struct_3(_wgslsmith_div_u32(~var_0.x, _wgslsmith_mod_u32(global1.c.x, 40106u)), global1.b, ~vec4<u32>(func_3(func_1(u_input.b.x, u_input.b.x)), ~(~0u), global1.c.x, ~24185u), firstTrailingBit(-global1.d) >> (~abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1.c.x), vec2<u32>(var_0.x, global1.a))) % vec2<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -4710i & global1.d.x, countOneBits(global1.d.x)), vec3<i32>(u_input.b.x, u_input.b.x, global1.d.x)) ^ -u_input.b.wwy);
    var_1 = var_2.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-794f + 146f), _wgslsmith_f_op_f32(f32(-1f) * -739f))), 170f, 721f));
    var_2 = Struct_3(_wgslsmith_sub_u32(var_2.c.x, ~select(1u, reverseBits(global1.a), true)), !select(global1.b, vec4<bool>(global1.b.x, !global1.b.x, true, all(vec2<bool>(var_1.x, true))), var_3.x <= var_3.x), global1.c, u_input.b.ww, global1.e);
    let var_4 = _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.x, 0u))), u_input.a)), ~global1.c.yz);
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-117f)))), -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))))), global1.b.x)), -153f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 208f, var_5.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1395f, var_3.x, var_3.x, 285f), vec4<f32>(var_5.x, -1540f, var_3.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_5.x, var_3.x, 569f))))), ~(vec4<i32>(var_2.d.x, 95579i, -6194i, u_input.b.x | var_2.d.x) & ~vec4<i32>(global1.d.x, var_2.e.x, -12262i, var_2.e.x)), _wgslsmith_f_op_f32(-2615f * -1031f), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 68979u, var_4.x, u_input.a.x), vec4<u32>(var_4.x, var_2.a, 13511u, 4294967295u))) ^ ~var_2.c.x);
}

