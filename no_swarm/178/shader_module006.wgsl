struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -12077i);

var<private> global1: Struct_4 = Struct_4(Struct_2(0u, -253f, vec4<i32>(-9804i, 5073i, i32(-2147483648), -17567i)), 1i, 38326i);

var<private> global2: array<f32, 1>;

var<private> global3: array<bool, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    var var_0 = global0.x & arg_1.a.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1843f, global1.a.b, global1.a.b, -1294f), vec4<f32>(-830f, -1429f, arg_1.a.b, arg_0.e.x), vec4<bool>(global3[_wgslsmith_index_u32(42819u, 30u)], global3[_wgslsmith_index_u32(global1.a.a, 30u)], global3[_wgslsmith_index_u32(34422u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)])))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, global1.a.b, -2027f, -807f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, arg_1.a.b, global1.a.b, -795f) + vec4<f32>(arg_0.e.x, -1608f, global2[_wgslsmith_index_u32(arg_0.c.a, 1u)], 447f))))))));
    var var_2 = arg_1;
    var_0 = global0.x;
    var_0 = _wgslsmith_add_i32(-(~1i), _wgslsmith_mod_i32(~(-1i), -23513i));
    return arg_0.c.a;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec3<u32>(firstTrailingBit(0u), 26553u, arg_0.a.x);
    let var_1 = global1.a.c;
    let var_2 = vec2<u32>(global1.a.a, func_3(Struct_3(global1.a, 21390i, global1.a, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 1u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, -1040f))), Struct_4(global1.a, 2147483647i, 38518i & global0.x)) ^ _wgslsmith_mult_u32(var_0.x, _wgslsmith_sub_u32(arg_0.a.x, ~3755u)));
    let var_3 = _wgslsmith_mod_vec3_i32(-select(vec3<i32>(var_1.x, global0.x, 1i), var_1.xwz, true) << (u_input.b.zww % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(global1.a.c.wxy, vec3<i32>(-(~global0.x), global1.b, countOneBits(global1.a.c.x)), vec3<i32>(global0.x, ~2147483647i, -(~10120i))));
    global1 = Struct_4(global1.a, arg_0.b, global0.x);
    return Struct_2(firstTrailingBit(~global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.b)))), global1.a.c);
}

fn func_1() -> Struct_2 {
    global3 = array<bool, 30>();
    let var_0 = 4294967295u;
    var var_1 = Struct_1(vec2<u32>(4294967295u, 27108u), -10444i >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a, u_input.b.x), vec2<u32>(7076u, 33942u)) & 76493u, u_input.b.x << (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u)) % 32u), 563f);
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec2_u32(var_1.a, var_1.a), var_1.a.x, 0u) << (u_input.a.zxw % vec3<u32>(32u));
    var var_3 = !(!(!(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 30u)])))));
    return func_2(Struct_1(~(~u_input.b.xz ^ ~vec2<u32>(var_1.a.x, 72025u)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1270f, 896f, false)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0.a, 1u)]))), -739f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(max(arg_0.b, global2[_wgslsmith_index_u32(4294967295u, 1u)])))))), arg_2.b);
    var var_1 = -1i;
    var_1 = ~arg_1.x;
    global2 = array<f32, 1>();
    return StorageBuffer(u_input.a.yxx | ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.a, arg_2.a, 13280u), u_input.b.wwx, vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(25104u, 30u)])), ~u_input.b.yyw), -arg_2.c.x, vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 11498u), global1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    let x = u_input.a;
    s_output = func_4(global1.a, _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(countOneBits(40602i), -30197i, _wgslsmith_add_i32(4835i, -2147483647i))), -global1.a.c.xzz), func_1());
}

