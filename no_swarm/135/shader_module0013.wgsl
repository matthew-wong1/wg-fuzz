struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 12422u, 0u, 29176u, 43290u, 3471u, 98057u, 4294967295u, 60141u, 31384u, 64583u, 49195u, 4294967295u, 23336u, 0u, 1u, 0u, 85148u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<u32> {
    return arg_1.xw;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = all(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a));
    var var_1 = func_2(Struct_1(true || any(select(vec2<bool>(true, false), vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, arg_2.a)))), abs(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_0.x, 4294967295u, 1u, 2436u)), ~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 0u) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, arg_0.x), vec4<u32>(u_input.a, arg_0.x, 1u, u_input.a)), abs(vec4<u32>(4294967295u, 4294967295u, 8755u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 19u)], 19u)])) >> (vec4<u32>(1u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45349u, 19u)], 19u)]) % vec4<u32>(32u)))));
    global0 = array<u32, 19>();
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-408f, 1198f, -1000f, 557f), vec4<f32>(-337f, -153f, -1747f, -1582f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1372f, 504f, -731f, 283f) + vec4<f32>(-849f, -1047f, -924f, 159f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2673f, 440f, -1035f, -976f)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(1721f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f + arg_1.x) - arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f))))));
    var var_1 = 905f;
    var var_2 = Struct_1(select(false, false, all(vec2<bool>(true, false))) == true);
    let var_3 = vec3<bool>(!(!(_wgslsmith_mult_u32(1u, u_input.a) == firstTrailingBit(26290u))), true, var_2.a);
    global0 = array<u32, 19>();
    return Struct_1(true);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_0 = arg_0;
    let var_1 = Struct_1(var_0.a);
    return func_4(vec2<i32>(-1i) * -max(vec2<i32>(2147483647i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, -58177i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(round(1011f))))), -383f, -1000f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2790f)), _wgslsmith_f_op_f32(f32(-1f) * -2037f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    var var_0 = Struct_1(!any(vec2<bool>(true, true)));
    var_0 = Struct_1(u_input.a >= 17185u);
    var_0 = Struct_1(all(!(!select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(false, var_0.a, true, true), var_0.a))));
    var_0 = func_5(func_4(vec2<i32>(-38095i, -13057i), _wgslsmith_div_vec4_f32(vec4<f32>(-369f, -894f, _wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]), vec3<f32>(-139f, 317f, -1701f), Struct_1(var_0.a)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(false), vec4<u32>(35482u, u_input.a, u_input.a, 4294967295u), Struct_1(var_0.a))))))));
    let var_1 = vec4<i32>(~1i, 33608i, select(31631i, ~(~16341i), func_4(vec2<i32>(-15164i, ~23408i), _wgslsmith_f_op_vec4_f32(vec4<f32>(867f, 852f, 149f, 2151f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1160f, 1000f, -852f))))).a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, 0i, -1i) << (reverseBits(4294967295u) % 32u), 2147483647i) & countOneBits(-2147483647i));
    let var_2 = func_4(vec2<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(var_1.x, var_1.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(11089i, var_1.x, -1903i), -1203i), 2147483647i), var_1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1987f, -200f, 667f, 250f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(740f, -1464f, -119f, 1000f) * vec4<f32>(295f, -2471f, -872f, 1742f))))), select(!vec4<bool>(false, var_0.a, true, false), select(!vec4<bool>(true, true, var_0.a, true), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), var_0.a)), true))));
    let var_3 = func_4(min(~(~(var_1.zz ^ var_1.wx)), vec2<i32>(0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(397f, -288f, 854f, 133f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_1.yy);
}

