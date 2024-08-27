struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-402f, -309f, -1000f), vec3<f32>(-1000f, 1253f, -317f), vec3<f32>(-276f, 1059f, -232f), vec3<f32>(1257f, -453f, -678f), vec3<f32>(1389f, 1521f, -560f), vec3<f32>(118f, -1000f, -339f), vec3<f32>(106f, 1701f, -1846f), vec3<f32>(-205f, -1200f, 741f), vec3<f32>(-1000f, -2381f, 2291f), vec3<f32>(-1000f, -303f, -1185f), vec3<f32>(-185f, -582f, 225f), vec3<f32>(-1744f, -531f, -319f), vec3<f32>(236f, 1540f, -402f), vec3<f32>(-1475f, -867f, 1000f), vec3<f32>(1704f, 566f, -886f), vec3<f32>(-1000f, -1000f, -921f), vec3<f32>(1564f, 1465f, 2930f), vec3<f32>(932f, -602f, 592f), vec3<f32>(-1522f, 563f, 100f), vec3<f32>(-272f, -835f, 1392f), vec3<f32>(-197f, -1231f, 535f), vec3<f32>(338f, -618f, 960f));

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 2496u, 1u, 44240u, 63585u, 1u, 15433u, 12862u, 8112u, 7426u, 4294967295u, 9469u, 69798u, 1u, 15491u);

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(0u, 16289u, 4294967295u, 0u), vec4<u32>(17837u, 18354u, 22951u, 23131u), vec4<u32>(1u, 17538u, 0u, 280u), vec4<u32>(37471u, 23299u, 46633u, 84988u), vec4<u32>(4294967295u, 11275u, 12500u, 1u), vec4<u32>(4294967295u, 6305u, 12624u, 44313u), vec4<u32>(12291u, 5600u, 4294967295u, 78014u), vec4<u32>(0u, 1u, 1652u, 0u), vec4<u32>(4294967295u, 0u, 89950u, 4294967295u), vec4<u32>(1u, 7834u, 57899u, 0u), vec4<u32>(4294967295u, 1u, 1u, 19728u), vec4<u32>(6841u, 1668u, 1u, 1u), vec4<u32>(4294967295u, 51309u, 1u, 4294967295u), vec4<u32>(31101u, 277u, 48045u, 15694u), vec4<u32>(1u, 69358u, 46416u, 4294967295u), vec4<u32>(1u, 0u, 61277u, 48845u), vec4<u32>(0u, 45033u, 50404u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4745u), vec4<u32>(0u, 4294967295u, 1u, 4082u), vec4<u32>(57526u, 4294967295u, 4294967295u, 1u), vec4<u32>(6233u, 53732u, 43906u, 44131u), vec4<u32>(4294967295u, 29695u, 76850u, 4294967295u), vec4<u32>(40036u, 23950u, 0u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_0;
    global1 = array<u32, 15>();
    var var_1 = arg_0.b;
    var var_2 = vec2<f32>(arg_0.b, 1056f);
    global0 = array<vec3<f32>, 22>();
    return u_input.a;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(func_3(Struct_2(true, -1012f), global1[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 1000f, 1363f, 465f))), 22u)])), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~(~(~59441u)), 22u)]));
    let var_1 = 0i;
    let var_2 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1935f) + var_0.x));
    var var_3 = _wgslsmith_f_op_f32(var_2.b * var_2.b);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 22u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(u_input.a, 15u)]), 22u)]))))), global2[_wgslsmith_index_u32(u_input.a, 23u)]);
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = !all(vec2<bool>(true, true));
    let var_1 = vec4<i32>(45094i, -25194i, abs(1i), 1i);
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(844f + var_2.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b - var_2.b), 1f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-475f, var_2.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(352f, var_2.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -1202f) - vec2<f32>(var_2.b, var_2.b))))), vec2<f32>(-243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1957f, -587f))))), !select(!select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, true), var_0), vec2<bool>(false, any(vec4<bool>(true, true, false, false))), var_0)));
    global0 = array<vec3<f32>, 22>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_3.x + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, -1430f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)))), global2[_wgslsmith_index_u32(27380u, 23u)]);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = !select(vec3<bool>(true, ~0u < u_input.a, true), !vec3<bool>(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, false))), !((arg_0 < arg_2.a.x) || false));
    global2 = array<vec4<u32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var var_2 = func_2();
    var var_3 = !(!(func_3(Struct_2(false, -1278f), 23097u, arg_3) != (26477u ^ u_input.a)) & (arg_2.a.x > _wgslsmith_f_op_f32(f32(-1f) * -1839f)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), 942f, func_1(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(220f, 1528f, -1215f, 476f), vec4<f32>(-897f, 1192f, 1075f, 501f)))))), 1f);
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(53806u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]);
    var var_2 = Struct_2(func_4(var_0.b, 111f, func_1(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_1.a.x, var_0.b, var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_0.b, 1000f, var_1.a.x) * vec4<f32>(var_1.a.x, var_1.a.x, -571f, 551f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, -1134f) - vec4<f32>(var_0.b, var_1.a.x, 441f, var_1.a.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -286f, 382f, var_1.a.x), vec4<f32>(-2322f, 768f, 1825f, 1639f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-482f, _wgslsmith_div_f32(-453f, 583f))), _wgslsmith_f_op_f32(var_1.a.x * -862f)))));
    let var_3 = -select(-18854i, _wgslsmith_add_i32(1i, 0i), !var_0.a);
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, _wgslsmith_mod_i32(~_wgslsmith_div_i32(37488i << (var_1.b.x % 32u), var_3 << (29279u % 32u)), var_3), var_1.b.x >> (4294967295u % 32u));
}

