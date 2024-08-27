struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 87410u;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: Struct_3 = Struct_3(false, Struct_2(vec3<f32>(645f, -262f, 257f), vec2<f32>(-1384f, -1261f), Struct_1(false, vec3<u32>(0u, 6776u, 4294967295u), vec4<u32>(4294967295u, 14046u, 4294967295u, 4294967295u), -276f, vec3<f32>(879f, -1738f, 862f)), vec4<f32>(-729f, -273f, 793f, 910f), Struct_1(false, vec3<u32>(27778u, 2246u, 1u), vec4<u32>(145u, 34942u, 1803u, 0u), -1287f, vec3<f32>(-1067f, -1454f, -1000f))));

var<private> global4: array<vec4<u32>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(70952u, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 19402u), _wgslsmith_dot_vec2_u32(global3.b.c.b.yy, global3.b.e.c.wy))), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(0u), ~global3.b.e.b.x), global3.b.e.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 103833u, 88773u), global0.c), _wgslsmith_mult_u32(max(66960u, 77415u), ~global3.b.e.b.x))), global3.b.e.b.x, abs(abs(~global0.c.x)), 9965u);
    let var_1 = select(all(select(!select(vec4<bool>(true, true, true, global3.a), vec4<bool>(true, global3.a, false, true), vec4<bool>(global3.b.c.a, global3.b.e.a, global2.x, global2.x)), !select(vec4<bool>(global2.x, global2.x, global0.a, true), vec4<bool>(global3.a, false, false, false), true), select(vec4<bool>(global2.x, true, global0.a, global2.x), vec4<bool>(global2.x, global0.a, true, true), false))), global2.x, false);
    let var_2 = true;
    let var_3 = global3.b.e;
    global0 = Struct_1(false, vec3<u32>(4294967295u, 1u, 26320u), vec4<u32>(80412u, ~(~_wgslsmith_div_u32(4294967295u, 3163u)), _wgslsmith_add_u32(select(var_0.x, _wgslsmith_mult_u32(var_3.c.x, 121715u), var_3.a), countOneBits(~58827u)), var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.e.e.x - -967f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.b.x))) * 818f), vec3<f32>(1733f, 661f, 785f));
    return vec2<f32>(global0.e.x, 963f);
}

fn func_2() -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~global4[_wgslsmith_index_u32(firstTrailingBit(39287u), 4u)], global0.c, ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(96494u, 4294967295u, 4294967295u, 1u), global0.c), ~vec4<u32>(global3.b.e.b.x, 2283u, global3.b.c.c.x, global3.b.c.c.x)));
    global2 = vec4<bool>(((864i <= -u_input.b.x) & (u_input.b.x < -u_input.b.x)) && any(vec2<bool>(true, true)), var_0.x == _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(global0.c.xw, _wgslsmith_div_vec2_u32(var_0.yz, vec2<u32>(global0.b.x, global3.b.c.c.x)))), u_input.b.x <= -5676i, (reverseBits(66071u) >> (_wgslsmith_add_u32(~global3.b.c.b.x, 4294967295u) % 32u)) <= (0u << (((36118u >> (var_0.x % 32u)) >> ((29817u << (global0.c.x % 32u)) % 32u)) % 32u)));
    global4 = array<vec4<u32>, 4>();
    let var_1 = Struct_3(true, Struct_2(global0.e, _wgslsmith_f_op_vec2_f32(func_3()), Struct_1(global2.x, abs(~var_0.ywx), max(~global4[_wgslsmith_index_u32(1u, 4u)], vec4<u32>(29847u, 0u, var_0.x, var_0.x)), 565f, vec3<f32>(_wgslsmith_f_op_f32(abs(-1252f)), _wgslsmith_div_f32(global3.b.a.x, global3.b.e.d), 193f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d, 326f, -798f, 1342f), global3.b.d, false)))), Struct_1(global3.b.e.a && any(global2.zzx), firstTrailingBit(firstTrailingBit(vec3<u32>(0u, global0.c.x, global0.b.x))), global0.c, -1000f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-325f, -578f, global3.b.a.x), vec3<f32>(global0.d, -1478f, global0.d))))));
    let var_2 = global3.b.a.xy;
    return ~21953u;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = reverseBits(func_2());
    var var_1 = global3.b.a.x;
    var var_2 = Struct_3(select(global0.c.x >= ~(~global0.b.x), arg_0, all(vec4<bool>(global3.b.e.b.x <= global3.b.c.c.x, !global2.x, any(vec2<bool>(false, false)), global0.a))), global3.b);
    var var_3 = vec4<bool>(false, !global3.b.c.a, true, 1172f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-526f, var_2.b.d.x, true))) - global3.b.b.x));
    let var_4 = global3.b.e;
    return Struct_3(select(true, !(_wgslsmith_mult_i32(u_input.a, u_input.a) == -u_input.b.x), !var_4.a), Struct_2(global0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, var_4.d))), global3.b.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1516f, global0.d, var_2.b.e.e.x, -2967f))), var_2.b.d, vec4<bool>(true, any(global2.xy), select(false, false, var_4.a), true))), Struct_1(false, global0.c.xyz, select(~var_4.c, vec4<u32>(87386u, var_2.b.c.b.x, global3.b.c.b.x, 31532u), vec4<bool>(global0.a, false, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f * -1367f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -916f, -1000f) * var_4.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(global3.a, !all(vec3<bool>(global0.a, false, global2.x)), global2.x), global3.b);
    global3 = func_1(global0.a);
    let var_1 = func_1(true);
    let var_2 = Struct_3(global0.c.x > 37423u, var_1.b);
    var var_3 = -u_input.b;
    var_0 = func_1(true);
    global0 = var_2.b.c;
    global2 = !select(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(-var_0.b.a.x) > _wgslsmith_f_op_f32(f32(-1f) * -190f)), !select(!vec4<bool>(var_1.a, false, global2.x, var_2.b.c.a), vec4<bool>(true, true, true, true), false), global2.x);
    var_0 = func_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(var_1.b.e.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.b.a))))), var_0.b.d);
}

