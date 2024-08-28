struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(18859u, 1u, false, Struct_1(vec2<u32>(19425u, 29536u), 81214u, vec3<i32>(0i, i32(-2147483648), 8820i), -1070f, 1000f));

var<private> global1: u32;

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<u32> {
    global1 = u_input.c.x;
    var var_0 = 17649u >> (countOneBits(arg_1.a.x) % 32u);
    var var_1 = u_input.b;
    var var_2 = !vec3<bool>(!global0.c, any(vec4<bool>(global0.c, 42609u <= global0.a, all(vec2<bool>(global0.c, true)), global0.c | true)), global0.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global0.d.e, 632f)), _wgslsmith_f_op_f32(1992f + global0.d.e)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-946f, 530f), global0.d.e))));
    return arg_1.a;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, abs(i32(-1i) * -2147483647i)), _wgslsmith_mod_vec2_i32(max(vec2<i32>(1i, 1i), vec2<i32>(u_input.b.x, -1045i)), ~vec2<i32>(18406i, u_input.b.x)) ^ global0.d.c.xx);
    var var_1 = ~(func_3(~1i, arg_1, Struct_3(vec4<u32>(arg_2, 74351u, global0.b, 0u) ^ arg_1.a), (vec4<i32>(42464i, u_input.b.x, 0i, -42020i) ^ vec4<i32>(-26179i, 1i, global0.d.c.x, 2147483647i)) & vec4<i32>(global0.d.c.x, 0i, var_0.x, 18603i)) | u_input.d);
    global0 = Struct_2(1u, ~4294967295u, any(!(!arg_3.zy)), global2[_wgslsmith_index_u32(arg_2, 29u)]);
    global2 = array<Struct_1, 29>();
    var var_2 = arg_1;
    return false;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<u32> {
    var var_0 = false;
    var_0 = !func_2(false, Struct_3(max(_wgslsmith_mult_vec4_u32(vec4<u32>(13126u, u_input.a, 26105u, 79711u), u_input.d), vec4<u32>(u_input.c.x, 0u, u_input.d.x, global0.d.a.x))), u_input.e.x, vec3<bool>(max(-2147483647i, 2147483647i) <= global0.d.c.x, !any(vec2<bool>(global0.c, false)), !any(vec3<bool>(true, global0.c, false))));
    var var_1 = global0.d.c;
    var var_2 = vec2<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), u_input.b.x);
    let var_3 = Struct_2(_wgslsmith_mult_u32(1u, 1u ^ min(u_input.e.x, u_input.a)) >> (~_wgslsmith_mult_u32(~7724u, func_3(2147483647i, Struct_3(u_input.d), Struct_3(vec4<u32>(5898u, 0u, 4294967295u, u_input.e.x)), vec4<i32>(-1i, u_input.b.x, var_1.x, -66479i)).x) % 32u), abs(~u_input.e.x), true, Struct_1(reverseBits(vec2<u32>(1u, 0u)), global0.d.b, ~vec3<i32>(2147483647i, -11907i, -54654i) ^ -u_input.b, _wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d.e, 2042f)))), global0.d.d));
    return vec2<u32>(0u, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    global1 = _wgslsmith_dot_vec2_u32(u_input.d.zw, func_1(1164f, ~u_input.c.x)) >> (29463u % 32u);
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(reverseBits(countOneBits(min(vec2<u32>(global0.b, u_input.c.x), global0.d.a))), global0.d.a), ~(~_wgslsmith_add_u32(~u_input.c.x, 4294967295u)), ~max(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.d.c.x, -2147483647i, 15680i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 32491i), u_input.b, u_input.b)), ~vec3<i32>(-2147483647i, global0.d.c.x, global0.d.c.x) << (_wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(u_input.d.x, 7282u, 21026u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), global0.d.e))), global0.d.e);
    let var_1 = Struct_2(select(firstLeadingBit(global0.b), max(u_input.c.x, 9641u) << ((_wgslsmith_add_u32(global0.a, var_0.a.x) >> (_wgslsmith_div_u32(4294967295u, var_0.b) % 32u)) % 32u), func_2(!(u_input.a >= 40455u), Struct_3(~vec4<u32>(32371u, global0.b, 1u, 0u)), func_3(min(u_input.b.x, 69213i), Struct_3(vec4<u32>(70911u, u_input.c.x, 4294967295u, global0.a)), Struct_3(vec4<u32>(4294967295u, 0u, 57213u, 92252u)), vec4<i32>(0i, u_input.b.x, var_0.c.x, var_0.c.x) >> (u_input.d % vec4<u32>(32u))).x, !(!vec3<bool>(global0.c, global0.c, global0.c)))), ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), min(0u, 4294967295u))), any(vec3<bool>(all(vec4<bool>(global0.c, global0.c, global0.c, true)) | true, global0.c, _wgslsmith_f_op_f32(var_0.d * global0.d.d) == var_0.d)), Struct_1(~select(vec2<u32>(1u, global0.d.b), vec2<u32>(global0.b, 1u), true), global0.b, _wgslsmith_mult_vec3_i32(var_0.c, global0.d.c), 612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.e), global0.d.e)))));
    global0 = var_1;
    global1 = firstTrailingBit(global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(~vec4<i32>(-9650i, 27027i, var_0.c.x, var_1.d.c.x) | firstTrailingBit(vec4<i32>(global0.d.c.x, var_0.c.x, 0i, 25857i)), abs(vec4<i32>(u_input.b.x, -8648i, 22748i, 5583i))), vec2<u32>(var_0.a.x, 47856u));
}

