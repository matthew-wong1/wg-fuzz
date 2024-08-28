struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(1798f, 30982u, 23479u), vec3<i32>(14547i, 1i, -126i), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true));

var<private> global1: array<f32, 6>;

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 25>;

var<private> global4: vec4<u32> = vec4<u32>(23184u, 1u, 68758u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.a), global4.x, ~9087u);
    let var_1 = Struct_1(-578f, countOneBits(arg_0.b), 16737u);
    let var_2 = arg_0;
    var var_3 = Struct_2(select(!global0.a, vec2<bool>(true != all(vec3<bool>(false, false, false)), !global0.a.x), true), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), firstLeadingBit(85059u), _wgslsmith_mod_u32(arg_0.b, ~var_2.b & max(u_input.a.x, 0u))), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global2.x, -27554i, 0i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, global2.x, global0.c.x), vec4<i32>(global0.c.x, global2.x, -36816i, -2147483647i))), vec4<i32>(2147483647i, global2.x, -2213i, global0.c.x | global0.c.x)), reverseBits(_wgslsmith_mod_i32(global2.x, global2.x) ^ countOneBits(1i)), global0.c.x), !select(global0.d, select(!vec4<bool>(global0.a.x, global0.d.x, global0.a.x, global0.e.x), vec4<bool>(true, global0.e.x, global0.e.x, true), vec4<bool>(global0.e.x, true, global0.d.x, false)), -global0.c.x > global2.x), vec4<bool>(!(4294967295u >= global4.x), !global0.e.x, any(!vec4<bool>(global0.d.x, global0.d.x, global0.a.x, true)) & (_wgslsmith_f_op_f32(round(324f)) == var_0.a), global0.b.a == arg_0.a));
    global0 = Struct_2(vec2<bool>(false, any(select(global0.e.wz, var_3.e.wx, global0.e.x))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b.a))), var_2.b, 26943u), var_3.c, !(!vec4<bool>(true, !var_3.e.x, all(global0.d.zxy), true)), var_3.d);
    return 1u;
}

fn func_2() -> u32 {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_0 = !vec3<bool>(global0.a.x, true, true);
    let var_1 = vec2<u32>(global4.x >> (~(~39835u) % 32u), u_input.a.x);
    var var_2 = global0.b;
    return func_3(global0.b);
}

fn func_1() -> StorageBuffer {
    global1 = array<f32, 6>();
    var var_0 = vec2<u32>(u_input.a.x, global4.x);
    let var_1 = Struct_2(select(!global0.e.xw, !global0.d.zx, 4294967295u != _wgslsmith_add_u32(global4.x, ~4294967295u)), Struct_1(global1[_wgslsmith_index_u32(~select(global0.b.c >> (8905u % 32u), 8223u, all(global0.e.xz)), 6u)], ~8586u, ~func_2()), ~(vec3<i32>(-1i) * -select(vec3<i32>(global0.c.x, global0.c.x, -63560i), vec3<i32>(global2.x, -2147483647i, 0i), vec3<bool>(global0.a.x, false, global0.a.x))), global0.e, vec4<bool>(global0.e.x, true, global0.d.x, true));
    global4 = _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(global4.x), var_0.x, 0u, ~reverseBits(~85109u)), countOneBits(abs(~vec4<u32>(u_input.a.x, var_0.x, 4294967295u, global0.b.b))));
    var_0 = ~(((global4.ww << (u_input.a % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(global4.zy ^ u_input.a, ~vec2<u32>(12483u, u_input.a.x))) >> (vec2<u32>(65867u, countOneBits(_wgslsmith_div_u32(global0.b.b, 38843u))) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.a, 1273f))))))), abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, 3372u, 74157u, 61819u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global4.x, 17849u, global4.x), vec4<u32>(global4.x, 4294967295u, global0.b.b, 20920u), vec4<u32>(global0.b.b, u_input.a.x, 57872u, var_1.b.b))))), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

