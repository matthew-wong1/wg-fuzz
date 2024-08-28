struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(841f, 462f, 1000f, -649f, -107f, 919f, -215f, 1000f);

var<private> global1: array<i32, 28> = array<i32, 28>(0i, -7300i, 2297i, -42733i, 2147483647i, -37015i, 23840i, 1i, 5675i, 17995i, 13646i, 1i, -29366i, -1801i, 26447i, 30i, -15850i, -24973i, 28542i, 26837i, -7052i, 0i, 34695i, 1i, 10849i, 883i, -8262i, 26521i);

var<private> global2: vec2<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<f32>(1000f, 1189f, 1000f), vec3<i32>(-1i, 2147483647i, -34471i), 237f, vec2<f32>(681f, -210f), vec2<i32>(14341i, 1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = false;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, -1657f, 377f, global0[_wgslsmith_index_u32(u_input.b, 8u)])) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.a.d.x, 717f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, global3.a.a.x, global2.x, 675f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(69162u, 8u)], global3.a.d.x, 550f, global0[_wgslsmith_index_u32(u_input.b, 8u)]))), !all(vec3<bool>(false, false, true))))));
    let var_3 = global3.a.a;
    var var_4 = ~firstTrailingBit(~_wgslsmith_mod_vec3_i32(global3.a.b, global3.a.b) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 60435u, 78540u), firstLeadingBit(vec3<u32>(u_input.b, u_input.a, u_input.a))) % vec3<u32>(32u)));
    return 1i;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(func_2(global0[_wgslsmith_index_u32(arg_0.x, 8u)]), _wgslsmith_mult_i32(_wgslsmith_div_i32(global3.a.e.x, -16838i), 0i)), -2147483647i, abs(32703i), 2147483647i));
    global1 = array<i32, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.wyw - _wgslsmith_f_op_vec3_f32(global3.a.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], -1000f, 1142f) + _wgslsmith_f_op_vec3_f32(global3.a.a + vec3<f32>(global3.a.c, 864f, 664f))))), global3.a.b, _wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(359f + 1000f))) - -1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(746f))))))), vec2<i32>((39076i >> (~4294967295u % 32u)) << (_wgslsmith_mod_u32(1u, 29561u) % 32u), var_0.x ^ -11954i));
    let var_2 = false;
    let var_3 = -2147483647i;
    return StorageBuffer(~vec2<u32>(4049u, abs(4294967295u)), ~arg_0, ~(~arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.a)), global3.a.b, global2.x, vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + 900f) * _wgslsmith_f_op_f32(global2.x * -981f)))), global0[_wgslsmith_index_u32(abs(u_input.a), 8u)]), global3.a.b.zy);
    let x = u_input.a;
    s_output = func_1(vec4<u32>(u_input.a, ~_wgslsmith_mod_u32(abs(1u), _wgslsmith_sub_u32(u_input.b, u_input.a)), ~(~(~49520u)), _wgslsmith_mult_u32(~u_input.b, ~abs(8179u))), 308f, vec4<f32>(global2.x, 2336f, global2.x, var_0.a.x));
}

