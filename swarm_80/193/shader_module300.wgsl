struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec4<bool>, 24>;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-184f, -987f), vec2<f32>(-481f, -1007f), vec2<f32>(780f, -1038f), vec2<f32>(1531f, 610f), vec2<f32>(512f, 1892f), vec2<f32>(-688f, -975f), vec2<f32>(-251f, -831f), vec2<f32>(-603f, 2252f));

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    return _wgslsmith_clamp_u32(u_input.d.x, ~(~min(~u_input.d.x, 55987u)), 0u);
}

fn func_2() -> vec4<f32> {
    var var_0 = !(global3.c.c.x < global3.c.c.x);
    global4 = array<Struct_1, 11>();
    var var_1 = Struct_3(36705u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.zz * global2[_wgslsmith_index_u32(31357u, 8u)]), global3.a.zy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-2624f, -1266f), _wgslsmith_f_op_f32(trunc(-1000f)))) >= 611f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], ~firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b), vec4<i32>(global3.c.c.x, global3.c.c.x, global3.c.c.x, global3.c.c.x))));
    var var_2 = vec3<u32>(func_3(), ~(~(~45891u)), ~(~4294967295u << (_wgslsmith_div_u32(u_input.d.x, 1u) % 32u)) | _wgslsmith_div_u32(10388u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a, 3576u), vec3<u32>(11445u, var_1.a, var_1.a)), _wgslsmith_mult_u32(var_1.a, 1u))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(select(-885f, _wgslsmith_div_f32(var_1.b.x, global3.a.x), global3.c.b.x)), (var_1.a == 1u) & true))), -183f, -1161f);
    return vec4<f32>(454f, _wgslsmith_f_op_f32(-370f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), var_1.b.x, !var_1.c)), var_1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a.x, -815f, var_1.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), var_1.b.x) + var_1.b.x)));
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_4(global3.c.c.zy, 416f, _wgslsmith_f_op_vec4_f32(func_2()));
    var var_1 = global3.b.x;
    global3 = Struct_2(var_0.c.zwy, !select(global1[_wgslsmith_index_u32(~1u, 24u)], !(!vec4<bool>(true, global3.c.a, global3.c.a, global3.b.x)), ~18997i >= ~u_input.a), Struct_1(false, !global3.b.yx, vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.b.wzx), u_input.b.yxy), global3.c.c.x, 2147483647i)));
    var_0 = Struct_4(u_input.b.zx, _wgslsmith_f_op_f32(abs(global3.a.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(434f, var_0.c.x)), 526f, _wgslsmith_f_op_f32(var_0.c.x - global3.a.x), 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-270f, 1433f, -868f, 227f), _wgslsmith_f_op_vec4_f32(-var_0.c), global3.b))))));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 8>();
    var var_0 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d.x, 29819u, 0u, u_input.d.x) >> ((vec4<u32>(7041u, u_input.d.x, 4294967295u, 20043u) ^ vec4<u32>(60880u, 1u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), vec4<u32>(4294967295u, func_1(), ~reverseBits(u_input.d.x), _wgslsmith_mult_u32(~u_input.d.x, ~u_input.d.x)));
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, 1201f, 1423f)) * _wgslsmith_f_op_vec3_f32(min(global3.a, global3.a))))), !(!(!global1[_wgslsmith_index_u32(39251u, 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d.x >> (u_input.d.x % 32u), 67364u, 50939u)), vec3<u32>(1u, u_input.d.x, ~(~4294967295u))), 6u)]);
    global1 = array<vec4<bool>, 24>();
    global4 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-global3.c.c.x, global3.c.c.x | u_input.b.x), ~u_input.b.zz)), countOneBits(min(select(u_input.b | u_input.b, select(u_input.b, vec4<i32>(global3.c.c.x, u_input.b.x, global3.c.c.x, global3.c.c.x), global1[_wgslsmith_index_u32(61010u, 24u)]), global3.c.b.x), vec4<i32>(-2147483647i, min(-68995i, u_input.c), u_input.a, -1i))));
}

