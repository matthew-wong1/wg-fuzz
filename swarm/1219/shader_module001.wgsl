struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(366f, 590f, 296f, -1000f);

var<private> global1: f32;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, global0.x, global0.x, 529f), vec4<f32>(arg_0, global0.x, arg_0, 297f)))))));
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_f32(abs(-960f));
    global1 = global0.x;
    let var_3 = Struct_1((_wgslsmith_sub_i32(reverseBits(u_input.b.x), _wgslsmith_div_i32(u_input.c, -1i)) << (9488u % 32u)) | 1i, ~u_input.a, vec2<bool>(u_input.a <= ~u_input.a, firstLeadingBit(u_input.a) == select(u_input.a, u_input.a, true)));
    return -1i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 27>();
    let var_0 = global3[_wgslsmith_index_u32(0u, 27u)];
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -154f))))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xyy, vec3<i32>(i32(-1i) * -1i, 4362i, ~1i)), -2147483647i) ^ vec2<i32>((u_input.b.x & u_input.c) & min(38775i, _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.wz)), func_3(1333f));
    var var_3 = firstTrailingBit(~1i);
    return global3[_wgslsmith_index_u32(min(u_input.a, ~8250u), 27u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    let var_0 = func_2(~(~(~_wgslsmith_div_u32(arg_1, u_input.a))));
    let var_1 = Struct_1(var_0.a, var_0.b, vec2<bool>(var_0.c.x, select(true, arg_0.c.x, all(!var_0.c))));
    let var_2 = abs(~vec4<u32>(var_0.b, 4294967295u, var_1.b, 1u));
    global3 = array<Struct_1, 27>();
    var var_3 = Struct_1(i32(-1i) * -var_0.a, ~reverseBits(reverseBits(~16406u)), func_2(firstLeadingBit(_wgslsmith_dot_vec4_u32(var_2, ~vec4<u32>(0u, var_2.x, 1u, u_input.a)))).c);
    return firstLeadingBit(~var_2.zwz);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 1f), global0.x), _wgslsmith_f_op_f32(-1209f - 236f)), -1056f, _wgslsmith_f_op_f32(round(398f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -184f))));
    global3 = array<Struct_1, 27>();
    global2 = !(!vec3<bool>(global2.x, global2.x, any(!vec4<bool>(global2.x, global2.x, global2.x, false))));
    var var_0 = _wgslsmith_add_i32(~abs(abs(1i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, ~(-1i)), i32(-1i) * -2147483647i)) >= 1i;
    global2 = vec3<bool>(all(select(vec3<bool>(any(vec4<bool>(global2.x, global2.x, true, true)), !global2.x, global2.x && global2.x), select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, true)), !vec3<bool>(true, global2.x, global2.x), all(vec4<bool>(true, true, false, true))), global2.x)), func_2(u_input.a).c.x, true);
    return global3[_wgslsmith_index_u32(~(~((reverseBits(u_input.a) & 4294967295u) & ((u_input.a << (u_input.a % 32u)) ^ ~4294967295u))), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.b.x, 9468u, !global2.yz);
    var var_1 = func_4(select(~(firstLeadingBit(vec3<u32>(4294967295u, var_0.b, 1u)) >> (select(vec3<u32>(4294967295u, u_input.a, 69180u), vec3<u32>(0u, 0u, var_0.b), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(select(reverseBits(vec3<u32>(u_input.a, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 12533u, u_input.a), vec3<u32>(58330u, u_input.a, u_input.a)), vec3<bool>(var_0.c.x, false, false)), abs(func_1(var_0, 4294967295u))), select(select(select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(false, true, true), vec3<bool>(global2.x, var_0.c.x, true)), !vec3<bool>(true, global2.x, false), !vec3<bool>(global2.x, false, true)), select(select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(true, var_0.c.x, false), false), !vec3<bool>(var_0.c.x, true, global2.x), vec3<bool>(var_0.c.x, global2.x, global2.x)), var_0.c.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-906f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))))), _wgslsmith_f_op_f32(round(global0.x)), global0.x);
    let var_2 = vec4<bool>(true, true, var_0.c.x, global2.x);
    let var_3 = ~(-vec2<i32>(-1i, 2147483647i));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1524f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -247f))))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(select(4294967295u, _wgslsmith_mod_u32(1u, u_input.a), var_2.x)), var_0.b, 56278u), ~(~42491u >> (~4294967295u % 32u)) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b, 4294967295u) ^ (77097u | u_input.a), var_1.b), _wgslsmith_div_vec2_i32(max(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, var_0.a), vec2<i32>(42735i, var_3.x)), var_3), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(var_1.a, var_1.a)), max(vec2<i32>(-9474i, var_3.x), vec2<i32>(var_0.a, u_input.b.x)))), vec2<i32>(var_3.x, var_1.a)));
}

