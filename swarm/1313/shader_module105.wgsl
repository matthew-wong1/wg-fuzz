struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-1i, -1i), vec4<f32>(-770f, -108f, -1195f, -381f), true, vec2<f32>(475f, -510f), -620f);

var<private> global3: u32 = 1u;

var<private> global4: array<vec4<u32>, 24>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec2<i32> {
    global4 = array<vec4<u32>, 24>();
    let var_0 = Struct_3(!select(vec2<bool>(any(vec3<bool>(global2.c, true, global2.c)), false), vec2<bool>(true, true), !global2.c), _wgslsmith_f_op_vec3_f32(global2.b.wzz * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, global2.d.x) * vec3<f32>(-471f, -1715f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-global2.b.yyx)))))));
    global2 = Struct_2(global2.a, global2.b, var_0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d + vec2<f32>(var_0.b.x, -391f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1161f) * global2.b.xw)))), 536f);
    var var_1 = -(~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-30055i, 2147483647i, 15289i, 36118i), vec4<i32>(global2.a.x, global2.a.x, global2.a.x, -1i)) | vec4<i32>(u_input.c.x, -14693i, u_input.c.x, -2147483647i)));
    let var_2 = !select(select(vec3<bool>(any(vec3<bool>(global2.c, true, var_0.a.x)), all(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), global2.c || true), !(!vec3<bool>(var_0.a.x, true, var_0.a.x)), all(vec2<bool>(true, false))), !(!select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(true, global2.c, false), vec3<bool>(false, var_0.a.x, true))), !vec3<bool>(!var_0.a.x, var_0.a.x | var_0.a.x, global2.c));
    return select(vec2<i32>(abs(u_input.c.x), -(_wgslsmith_div_i32(2147483647i, -1i) & (var_1.x ^ global2.a.x))), -vec2<i32>(-global2.a.x << (62071u % 32u), -2147483647i), vec2<bool>(false, !(_wgslsmith_mod_u32(arg_1, 1u) < 57549u)));
}

fn func_2() -> vec2<i32> {
    global1 = abs(global2.a.x) <= ~u_input.c.x;
    global0 = array<Struct_4, 6>();
    let var_0 = vec2<i32>(-1i) * -u_input.c;
    return max(-(~func_3(_wgslsmith_div_vec2_f32(global2.d, global2.d), _wgslsmith_sub_u32(4294967295u, u_input.a))), vec2<i32>(global2.a.x, var_0.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<i32>) -> vec4<i32> {
    global2 = Struct_2(min(_wgslsmith_mult_vec2_i32(func_2(), _wgslsmith_sub_vec2_i32(countOneBits(u_input.c), max(vec2<i32>(arg_2.x, 5329i), vec2<i32>(global2.a.x, arg_2.x)))), u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -1110f, _wgslsmith_f_op_f32(global2.d.x - global2.d.x), _wgslsmith_f_op_f32(floor(global2.d.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, -1000f, -1341f, -830f), vec4<f32>(arg_1.a, global2.d.x, 766f, -323f))))) - _wgslsmith_f_op_vec4_f32(global2.b + global2.b)), (true || global2.c) != true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 499f)) - _wgslsmith_f_op_f32(1734f + 924f)));
    global2 = Struct_2(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1273f, 760f), global2.b.zw)))), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.d.x), -1081f, -1716f, _wgslsmith_f_op_f32(trunc(-1000f))))), any(vec3<bool>(any(vec3<bool>(global2.c, global2.c, global2.c)), global2.c, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(-global2.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, -1092f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1252f))), vec2<bool>(select(!global2.c, true, !global2.c), all(vec2<bool>(global2.c, false))))), _wgslsmith_f_op_f32(-global2.b.x));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-865f, arg_1.a, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f))), arg_1.a, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(max(-479f, global2.b.x)), (abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, 6276i, -19990i, arg_2.x), arg_2)) >> (firstLeadingBit(vec4<u32>(1u, 93268u, u_input.a, u_input.a)) % vec4<u32>(32u))) >> (select(global4[_wgslsmith_index_u32(abs(~u_input.b.x), 24u)], countOneBits(min(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(u_input.b.x, 24u)])), true) % vec4<u32>(32u)), max(vec2<i32>(-1i) * -reverseBits(arg_3), _wgslsmith_add_vec2_i32(max(select(global2.a, vec2<i32>(1i, arg_0), vec2<bool>(global2.c, false)), ~vec2<i32>(4201i, arg_3.x)), vec2<i32>(u_input.c.x, arg_3.x) & vec2<i32>(39310i, -1i))), select(~(arg_1.c ^ (arg_2 & vec4<i32>(global2.a.x, arg_3.x, -25159i, arg_0))), arg_2, select(!(!vec4<bool>(global2.c, global2.c, false, false)), vec4<bool>(any(vec4<bool>(global2.c, true, global2.c, global2.c)), !global2.c, any(vec2<bool>(true, global2.c)), global2.c), global2.e < -1000f)));
    global0 = array<Struct_4, 6>();
    var var_1 = var_0.a;
    return firstTrailingBit(-(arg_1.e << (global4[_wgslsmith_index_u32(~u_input.a, 24u)] % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global2.c, 4294967295u >= firstLeadingBit(~u_input.b.x ^ 24054u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) - global2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, -178f, true))), -min(abs(func_1(global2.a.x, Struct_1(-277f, 2962f, vec4<i32>(-39948i, 37945i, u_input.c.x, global2.a.x), global2.a, vec4<i32>(u_input.c.x, 2147483647i, global2.a.x, 1i)), vec4<i32>(-8458i, u_input.c.x, -2147483647i, 0i), vec2<i32>(16279i, -1i))), abs(-vec4<i32>(global2.a.x, 11754i, 20562i, 5399i))), -func_2() | (reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.x, u_input.c.x), u_input.c)) ^ ~vec2<i32>(u_input.c.x, -36222i)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-global2.a.x, -1i), global2.a.x), global2.a.x, global2.a.x, -1i));
    let var_2 = Struct_1(-1581f, var_1.a, firstTrailingBit(var_1.c), -var_1.c.ww, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global2.a.x ^ -1i, -global2.a.x, -9576i, u_input.c.x)), vec4<i32>(~global2.a.x, u_input.c.x, var_1.e.x, _wgslsmith_mult_i32(func_1(42213i, Struct_1(-331f, global2.e, var_1.e, vec2<i32>(0i, -2147483647i), vec4<i32>(0i, 6406i, 1i, global2.a.x)), var_1.c, global2.a).x, u_input.c.x))));
    var var_3 = Struct_3(select(!vec2<bool>(var_0.x, global2.c), !select(!vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), vec2<bool>(false, global2.c)), global2.b.xxx);
    var var_4 = Struct_3(!vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, global2.c), vec4<bool>(false, global2.c, false, var_3.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) * global2.b.zzx), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3.b))), any(vec3<bool>(global2.c, global2.c, var_3.a.x)))) * vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1176f + -1194f), -591f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + 294f), var_3.b.x))));
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(select(~(vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(1u, u_input.a)), ~u_input.b, select(var_3.a.x, false, true) || (false && var_4.a.x))), countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37858u, 57715u, u_input.b.x), vec3<u32>(0u, u_input.b.x, 4294967295u)) << (9036u % 32u), countOneBits(select(u_input.a, 27327u, false))))), 6u)];
    global1 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(7271u, select(var_1.e, var_1.e, select(select(select(vec4<bool>(true, true, var_4.a.x, global2.c), vec4<bool>(false, var_3.a.x, global2.c, false), vec4<bool>(true, var_5.c.x, true, var_4.a.x)), select(vec4<bool>(false, var_5.c.x, var_3.a.x, var_0.x), vec4<bool>(var_0.x, true, global2.c, true), vec4<bool>(var_0.x, var_5.d, var_4.a.x, true)), true), select(vec4<bool>(var_4.a.x, var_5.d, false, true), select(vec4<bool>(var_0.x, false, global2.c, var_3.a.x), vec4<bool>(true, false, true, var_4.a.x), global2.c), !var_4.a.x), var_1.a <= _wgslsmith_f_op_f32(f32(-1f) * -981f))));
}

