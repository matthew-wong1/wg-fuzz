struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(2147483647i, -1i), -39599i, vec3<u32>(6052u, 14388u, 39479u), true, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(-5408i, 35042i), 427i, vec3<u32>(0u, 51704u, 462u), false, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(24421i, -2634i), -44653i, vec3<u32>(109571u, 1u, 1u), true, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-16612i, i32(-2147483648)), i32(-2147483648), vec3<u32>(24040u, 1u, 0u), true, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(2147483647i, 0i), 2147483647i, vec3<u32>(43345u, 35410u, 31918u), false, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-22075i, 2147483647i), -17377i, vec3<u32>(4294967295u, 33192u, 1u), true, vec3<bool>(false, false, false)), Struct_1(vec2<i32>(2147483647i, 1i), 2147483647i, vec3<u32>(292u, 1u, 4294967295u), false, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(i32(-2147483648), 8645i), 29735i, vec3<u32>(4294967295u, 48328u, 2068u), false, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(2147483647i, -18110i), -1i, vec3<u32>(7437u, 69968u, 51747u), true, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(i32(-2147483648), 0i), -20145i, vec3<u32>(15703u, 69899u, 69187u), true, vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1i, -41024i), 2147483647i, vec3<u32>(4294967295u, 0u, 69001u), false, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(2147483647i, -10426i), 112858i, vec3<u32>(0u, 0u, 0u), true, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(41899i, 57336i), 12659i, vec3<u32>(4294967295u, 0u, 1u), false, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-27000i, -24936i), 1i, vec3<u32>(0u, 2696u, 27867u), true, vec3<bool>(false, false, false)), Struct_1(vec2<i32>(2147483647i, -1i), -14440i, vec3<u32>(37909u, 0u, 1u), false, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(60439i, 49092i), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(-21183i, -1291i), -1i, vec3<u32>(0u, 21358u, 4294967295u), false, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-1i, 0i), -48548i, vec3<u32>(1u, 1u, 22492u), false, vec3<bool>(true, false, true)), Struct_1(vec2<i32>(34177i, 3165i), 6309i, vec3<u32>(0u, 8695u, 4294967295u), false, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(1i, 1i), 2147483647i, vec3<u32>(4294967295u, 80630u, 4294967295u), true, vec3<bool>(false, false, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(0u, 20u)];
    let var_1 = ~(-vec3<i32>(max(36048i, 1504i), u_input.c, -91664i) & abs(min(u_input.e.zxx, u_input.e.wyw) << (~global3.d.c % vec3<u32>(32u))));
    let var_2 = u_input.e.zz;
    return arg_0;
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = arg_0.zz;
    var var_1 = Struct_2(-546f, Struct_1(u_input.e.wx, _wgslsmith_sub_i32(abs(min(global3.d.a.x, u_input.e.x)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global3.d.a.x, u_input.e.x, u_input.c, 1i), vec4<i32>(-16196i, u_input.e.x, global3.e, u_input.e.x)), ~u_input.e)), global3.b.c, any(vec3<bool>(any(vec3<bool>(global3.d.d, global3.b.e.x, global3.d.e.x)), select(false, false, false), var_0.x <= -141f)), global3.d.e), global3.c, Struct_1(-(~(~vec2<i32>(-34230i, u_input.c))), global3.b.b >> (1u % 32u), global3.d.c, all(vec4<bool>(true, select(false, global3.b.e.x, true), true, true)), !(!global3.b.e)), -2147483647i);
    global0 = ~global3.e ^ var_1.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 474f));
    var var_3 = var_1.b.e;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(25572i, -2147483647i), -1i), min(max(~abs(vec2<i32>(0i, var_1.b.a.x)), var_1.b.a | -var_1.b.a), global3.b.a));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = vec4<u32>(20305u, reverseBits(global3.d.c.x), func_2(global3.d.c.x, _wgslsmith_f_op_f32(-global3.a), abs(global3.b.c.x)), arg_0);
    var var_1 = global3.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(global3.a)), global3.b, !(_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(exp2(global3.a))) >= _wgslsmith_f_op_f32(-global3.a)), global4[_wgslsmith_index_u32(~u_input.a, 20u)], countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-4384i, var_1.b), func_3(vec4<f32>(global3.a, global3.a, global3.a, global3.a))) ^ _wgslsmith_add_i32(-2147483647i ^ u_input.c, min(-2147483647i, 13815i))));
    var var_3 = global3.d;
    global0 = i32(-1i) * -4571i;
    return _wgslsmith_dot_vec2_u32(var_2.b.c.zx, global3.d.c.zy) ^ abs(18355u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(20300u, _wgslsmith_add_u32(~1u, ~u_input.d), abs(abs(_wgslsmith_mult_u32(u_input.d, 0u))), ~(~21214u)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1851u, u_input.a, u_input.d, 90814u)) << (~max(vec4<u32>(0u, 1u, 42509u, 36389u), vec4<u32>(global3.b.c.x, u_input.a, 48241u, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.c.x, global3.d.c.x, 4294967295u), global3.d.c) << (func_1(4294967295u) % 32u), ~_wgslsmith_mult_u32(global3.d.c.x, global3.d.c.x), 5785u, 22492u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))) + global3.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058f - global3.a) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(217f, 267f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(623f - _wgslsmith_f_op_f32(step(-953f, global3.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a))), all(!vec4<bool>(global3.d.e.x, true, true, global3.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global3.a))))), abs(var_0.x), vec4<i32>(1i, 21947i << (~u_input.a % 32u), ~21727i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~global3.e, u_input.e.x), 1i)));
}

