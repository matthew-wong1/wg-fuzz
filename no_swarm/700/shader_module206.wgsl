struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(1309f), Struct_3(-590f), Struct_3(1534f), Struct_3(-235f), Struct_3(107f), Struct_3(663f));

var<private> global2: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> f32 {
    global0 = all(vec2<bool>(arg_2.c.x, true));
    global0 = !global2.d.c.x;
    var var_0 = Struct_4(-18645i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global2.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.a.d, -2620f, arg_0.x, 912f) + _wgslsmith_f_op_vec4_f32(-global2.b))))), firstTrailingBit(vec4<i32>(arg_2.b, ~_wgslsmith_div_i32(20659i, arg_1), 0i, global2.d.b)), arg_2);
    global1 = array<Struct_3, 6>();
    let var_1 = any(!select(!vec4<bool>(false, false, true, arg_2.a.a), vec4<bool>(false, var_0.a > -2147483647i, global2.d.a.c.x < 88719u, arg_2.b < arg_2.b), !global2.d.e));
    return _wgslsmith_f_op_f32(trunc(arg_2.a.d));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = ~global2.a;
    global2 = Struct_4(abs(-651i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0, global2.d.b, global2.d, 0u)), global2.d.a.d, _wgslsmith_f_op_f32(-1458f - 534f), arg_0.x) * vec4<f32>(-1807f, _wgslsmith_f_op_f32(ceil(-1000f)), arg_0.x, _wgslsmith_f_op_f32(sign(518f)))) - vec4<f32>(global2.d.a.d, 325f, arg_0.x, global2.b.x)), -select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(global2.c, global2.c), -vec4<i32>(global2.c.x, var_0, -20618i, -49223i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0, 1i, global2.c.x), vec4<i32>(global2.d.b, 0i, var_0, global2.a)), select(!vec4<bool>(true, global2.d.c.x, global2.d.c.x, false), !vec4<bool>(global2.d.a.a, true, global2.d.c.x, true), global2.d.a.a & true)), global2.d);
    let var_1 = global2.d.a;
    let var_2 = !global2.d.c.xz;
    global0 = !any(vec4<bool>(!(39022u >= var_1.c.x), _wgslsmith_f_op_f32(1502f * global2.b.x) < _wgslsmith_f_op_f32(floor(-1381f)), _wgslsmith_f_op_f32(func_3(global2.b.ywz, 18513i, global2.d, global2.d.d)) <= _wgslsmith_f_op_f32(f32(-1f) * -176f), var_1.a));
    return -2147483647i;
}

fn func_1() -> Struct_4 {
    global0 = true;
    var var_0 = Struct_4(global2.c.x, vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), global2.d.a.b, -1266f, global2.d.a.d), vec4<i32>(1592i, ~(-1i), -global2.d.b, _wgslsmith_sub_i32(-4895i, global2.a) >> (~global2.d.d % 32u)) | vec4<i32>(global2.d.b, -1i, min(global2.c.x, max(global2.d.b, global2.c.x)), func_2(global2.b.xyz)), global2.d);
    var var_1 = var_0.d.a;
    var var_2 = -var_0.d.b;
    let var_3 = Struct_4(((firstTrailingBit(42967i) >> (78352u % 32u)) & -3293i) << (firstLeadingBit(~_wgslsmith_dot_vec3_u32(global2.d.a.c, vec3<u32>(19388u, global2.d.d, 5220u))) % 32u), global2.b, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~var_0.c.xx, global2.c.xz, global2.c.xx), -var_0.c.zz), global2.c.x, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.c.x, var_0.c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, global2.a), vec2<i32>(global2.a, 50069i))), vec2<i32>(-46736i, abs(var_0.c.x)))), var_0.d);
    return Struct_4(-34695i, vec4<f32>(1000f, global2.b.x, global2.d.a.b, global2.d.a.d), global2.c, Struct_2(var_3.d.a, var_3.c.x | (i32(-1i) * -2147483647i), var_0.d.c, global2.d.d, var_3.d.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 6>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(41559u, _wgslsmith_add_u32(firstLeadingBit(9601u), u_input.a)), 6u)];
    global2 = func_1();
    global1 = array<Struct_3, 6>();
    global1 = array<Struct_3, 6>();
    let var_1 = !vec4<bool>(all(!(!vec4<bool>(false, true, false, global2.d.c.x))), !select(!global2.d.a.a, false, true), true, true);
    let var_2 = !var_1.x;
    let var_3 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~(~global2.d.d), select(16918u, 1u, global2.c.x > global2.d.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 138218u), vec4<u32>(52219u, 4294967295u, 1u, 3639u))), vec4<u32>(reverseBits(u_input.a), global2.d.a.c.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 0u), 18897u), 1u), ~vec4<u32>(1u, global2.d.a.c.x, 7061u, ~1u)), select(~(vec4<u32>(u_input.a, 4294967295u, global2.d.a.c.x, global2.d.a.c.x) & max(vec4<u32>(0u, u_input.a, u_input.a, global2.d.a.c.x), vec4<u32>(69328u, 0u, global2.d.a.c.x, global2.d.a.c.x))), ~(vec4<u32>(u_input.a, 48691u, 4294967295u, u_input.a) << (vec4<u32>(global2.d.a.c.x, u_input.a, global2.d.d, 0u) % vec4<u32>(32u))), var_1.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(-26272i, vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(43529u, var_3.x, 34659u) & vec3<u32>(u_input.a, var_3.x, 59538u)), global2.d.a.c), u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(45336u, global2.d.d, 80991u), vec3<u32>(u_input.a, 4294967295u, global2.d.a.c.x), global2.d.c), ~vec3<u32>(68417u, global2.d.d, 39443u)))), _wgslsmith_f_op_vec3_f32(-global2.b.zxx), global2.a, abs(abs(global2.d.a.c | global2.d.a.c)) >> (var_3.zzy % vec3<u32>(32u)));
}

