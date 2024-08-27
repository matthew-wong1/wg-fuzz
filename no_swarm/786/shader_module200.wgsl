struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<f32>(674f, 631f, -723f, 999f)), Struct_3(vec4<f32>(1462f, -871f, -1388f, -611f)), Struct_3(vec4<f32>(-1000f, 1100f, -208f, -454f)), Struct_3(vec4<f32>(-674f, -137f, 1195f, -717f)), Struct_3(vec4<f32>(156f, 1568f, 400f, -262f)), Struct_3(vec4<f32>(928f, -484f, -2168f, -279f)), Struct_3(vec4<f32>(-806f, 535f, 2483f, -680f)), Struct_3(vec4<f32>(122f, 899f, 238f, 1458f)), Struct_3(vec4<f32>(-953f, -481f, -282f, 756f)), Struct_3(vec4<f32>(-611f, -1015f, 653f, -1000f)), Struct_3(vec4<f32>(-626f, -483f, -972f, 1589f)), Struct_3(vec4<f32>(-803f, 449f, -1601f, -1925f)), Struct_3(vec4<f32>(-296f, 1337f, -483f, 510f)), Struct_3(vec4<f32>(123f, -1000f, 588f, -324f)), Struct_3(vec4<f32>(1000f, 194f, -1000f, -1456f)), Struct_3(vec4<f32>(1127f, 666f, -1535f, -599f)), Struct_3(vec4<f32>(-563f, -215f, 294f, -1592f)), Struct_3(vec4<f32>(1336f, -285f, -1009f, 1884f)), Struct_3(vec4<f32>(-956f, 811f, -1416f, -598f)), Struct_3(vec4<f32>(-1293f, -324f, 296f, -847f)), Struct_3(vec4<f32>(126f, 633f, -1000f, 926f)), Struct_3(vec4<f32>(746f, 108f, -1399f, -420f)), Struct_3(vec4<f32>(1449f, 1668f, -2285f, -615f)), Struct_3(vec4<f32>(400f, 560f, 630f, 1002f)));

var<private> global3: array<vec3<i32>, 28>;

var<private> global4: array<vec4<f32>, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = abs(_wgslsmith_mult_vec4_i32(min(vec4<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), ~1i, 2147483647i, -2147483647i), -(vec4<i32>(0i, 10694i, -81665i, 46103i) >> (vec4<u32>(113491u, arg_0.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(25366i, -16432i << (u_input.a.x % 32u), 1i, -9374i) ^ select(_wgslsmith_sub_vec4_i32(vec4<i32>(66449i, -2147483647i, -16283i, -40605i), vec4<i32>(0i, -1i, 33992i, 17424i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-41744i, -20207i, 0i, 2147483647i), vec4<i32>(16042i, -47744i, 2147483647i, -2147483647i)), false)));
    return vec4<bool>(false, all(vec4<bool>(false, global1.x && arg_1.x, true, any(!global1.yyy))), !arg_1.x, any(arg_1.wzz));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f - 333f))))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f - arg_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x)), arg_3.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_3.a.yyw))), global1.ywz));
    let var_1 = Struct_2(min(arg_2.a, ~(~arg_2.a)), func_2(), arg_2.c, arg_2.c);
    let var_2 = arg_3;
    global3 = array<vec3<i32>, 28>();
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x)));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(!func_1(Struct_2(vec3<u32>(39787u, u_input.a.x, 4294967295u), Struct_1(-402f), Struct_1(-312f), Struct_1(491f)), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(global1.x | true, true, false, global1.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)), func_1(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_1(-847f), Struct_1(974f), Struct_1(410f)), vec4<bool>(false, global1.x, false, global1.x)), global1.x)));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-167f, var_1.a)) + _wgslsmith_f_op_f32(628f * var_1.a)), -1601f), _wgslsmith_div_f32(-983f, var_1.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(func_3(1u, global1.wy, Struct_2(vec3<u32>(1u, u_input.a.x, u_input.a.x), Struct_1(-2087f), Struct_1(-946f), Struct_1(var_1.a)), Struct_3(global4[_wgslsmith_index_u32(u_input.a.x, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, -1369f, -1000f) * vec3<f32>(var_1.a, var_1.a, 1000f))))))), true));
    var var_3 = _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_1.a));
    var var_4 = firstTrailingBit(~(~u_input.a.x)) <= 602u;
    var_0 = var_1.a != var_2.x;
    let var_5 = ~vec2<u32>(u_input.a.x, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(-select(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 29u)], -vec3<i32>(2147483647i, -1i, -4859i), vec3<bool>(global1.x, global1.x, true)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(40902u, _wgslsmith_div_u32(1u, u_input.a.x), _wgslsmith_sub_u32(30006u, u_input.a.x)), ~(~vec3<u32>(u_input.a.x, 1u, 0u))) % vec3<u32>(32u)), -vec4<i32>(19005i, 1i, 1i, 1i));
}

