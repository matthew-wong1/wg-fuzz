struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec2<bool>;

var<private> global3: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-783f, -1018f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    global0 = array<i32, 20>();
    let var_0 = Struct_1(13021u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1106f, 380f, 387f, -1038f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1415f, 908f, 462f, 119f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -670f, 795f, -588f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1039f, 279f, -277f, 813f), vec4<f32>(1271f, 362f, 327f, 870f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(859f, 1455f, 1486f, 760f), vec4<f32>(-1491f, 198f, -1909f, -438f), global1.x)))))));
    global0 = array<i32, 20>();
    let var_1 = global0[_wgslsmith_index_u32(max(~var_0.a, 130u), 20u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -953f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_4 {
    return Struct_4(vec2<bool>(true, select(true, true, false) & global2.x));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_1.b.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))))));
    var var_1 = !all(select(select(arg_1.a.yy, !arg_1.a.xz, !arg_1.a.x), !vec2<bool>(false, arg_0), arg_1.a.x));
    let var_2 = !(!select(!(!arg_1.a), select(arg_1.a, vec4<bool>(false, true, true, true), !vec4<bool>(true, arg_1.a.x, false, global2.x)), func_2(-u_input.d.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(var_0.x, var_0.x))).a.x));
    var var_3 = Struct_3(abs(~vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(1u, 20u)]), -u_input.d.x, ~2147483647i, abs(-2147483647i))), arg_1, !(!func_2(-vec2<i32>(u_input.d.x, global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_vec2_f32(var_0.xy + vec2<f32>(1363f, var_0.x))).a.x), arg_1.b.b.x);
    var var_4 = ~(~abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 2189u, 35267u), vec3<u32>(1614u, var_3.b.b.a, 39787u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b.b.a, 0u, 7307u), vec3<u32>(35799u, 4294967295u, 1u)))));
    return vec3<u32>(~(arg_1.b.a ^ arg_1.b.a), 4294967295u, arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1829f;
    let var_1 = func_2(_wgslsmith_add_vec2_i32(u_input.d.xz, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 12978i), u_input.b.yx), u_input.b.xy), u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1536f + 151f)), vec2<f32>(101f, _wgslsmith_f_op_f32(f32(-1f) * -931f)))) + _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(countOneBits(0u), 1u)], global3[_wgslsmith_index_u32(45090u, 1u)])));
    let var_2 = -(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x & -11965i, -9433i, ~11808i), vec3<i32>(10553i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.c), 20u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c, 20u)], -2147483647i))) >> (_wgslsmith_sub_vec3_u32(func_3(global1.x, Struct_2(vec4<bool>(var_1.a.x, false, true, global1.x), Struct_1(u_input.c, vec4<f32>(413f, -1612f, 157f, -325f))), u_input.c, -19577i) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.c)), vec3<u32>(min(0u, 16269u), max(u_input.c, 0u), ~u_input.c)) % vec3<u32>(32u)));
    var var_3 = vec3<bool>(any(vec2<bool>(func_2(-vec2<i32>(0i, 0i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1286f, 903f)))).a.x, true)), true, false);
    let var_4 = !var_1.a;
    let var_5 = ~(~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, vec4<i32>(-23078i, max(select(7234i, 962i, true) | (var_5 & var_2.x), reverseBits(var_2.x)), u_input.b.x, select(var_5, abs(global0[_wgslsmith_index_u32(u_input.c, 20u)]) & var_2.x, false)), firstTrailingBit(var_5 << ((~u_input.c & 1u) % 32u)), -var_5);
}

