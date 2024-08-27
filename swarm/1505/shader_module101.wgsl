struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_3(any(vec3<bool>(true, true, false)));
    let var_1 = vec3<u32>(1u, reverseBits(64915u), ~_wgslsmith_div_u32(4294967295u, ~24726u));
    var_0 = Struct_3(var_0.a);
    var var_2 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, _wgslsmith_dot_vec3_i32(arg_0.b.xzz, _wgslsmith_mult_vec3_i32(arg_0.b.wxx, vec3<i32>(0i, global0.x, arg_0.b.x)))), abs(~(arg_0.a >> (var_1.xx % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-384f, -1771f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2502f, 629f))))));
    return _wgslsmith_add_i32(var_2.x, -2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    let var_0 = Struct_3(arg_2);
    let var_1 = Struct_1(vec2<i32>(-func_2(Struct_1(u_input.a, vec4<i32>(-11440i, global0.x, u_input.a.x, u_input.a.x)), global0.x >> (0u % 32u)), _wgslsmith_sub_i32(global0.x & -2147483647i, firstTrailingBit(u_input.a.x)) & abs(u_input.a.x)), -(vec4<i32>(-1i) * -(~vec4<i32>(global0.x, 1i, u_input.a.x, u_input.a.x))));
    let var_2 = var_1;
    global0 = var_1.b.zww;
    var var_3 = u_input.b.x << (u_input.c % 32u);
    return var_1.b.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = Struct_1(arg_2.zz, -(~(~vec4<i32>(arg_0.x, 30890i, 9412i, 2147483647i)) & arg_2));
    var var_1 = !vec3<bool>(arg_3, ~max(4294967295u, u_input.b.x) > _wgslsmith_add_u32(4294967295u, arg_1 ^ arg_1), all(vec3<bool>(false, false, true)));
    var_1 = select(vec3<bool>(true, true, true), select(select(vec3<bool>(!arg_3, select(true, false, arg_3), true), select(!vec3<bool>(false, var_1.x, false), !vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, false, false), true)), arg_3), !select(vec3<bool>(true, var_1.x, true), select(vec3<bool>(true, false, arg_3), vec3<bool>(true, true, true), vec3<bool>(arg_3, false, false)), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true);
    var var_2 = var_0;
    let var_3 = -12174i;
    return !any(var_1.xy);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global0 = _wgslsmith_clamp_vec3_i32(-arg_2.b.zwz, arg_2.b.zzz ^ countOneBits(vec3<i32>(i32(-1i) * -1955i, _wgslsmith_mod_i32(1i, global0.x), u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(32005i, _wgslsmith_add_i32(arg_2.a.x, u_input.a.x >> (u_input.c % 32u)), 37446i), -_wgslsmith_mult_vec3_i32(~arg_2.b.xzx, vec3<i32>(arg_2.b.x, 18007i, 10098i))));
    global0 = max(select(select(vec3<i32>(global0.x, -2147483647i, arg_2.b.x), abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 2147483647i, -40122i), arg_2.b.xyz)), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), _wgslsmith_sub_vec3_i32(reverseBits(arg_2.b.wzx), arg_2.b.xzx) | (select(vec3<i32>(0i, u_input.a.x, -1i), vec3<i32>(global0.x, 21817i, 34814i), arg_1.a) ^ arg_2.b.wzz), select(select(vec3<bool>(arg_1.a, false, arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, false, false)), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.a)), vec3<bool>(arg_1.a, arg_1.a, false), !vec3<bool>(false, arg_1.a, arg_1.a)), !select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(true, arg_1.a, true)))), -abs(arg_2.b.wyx));
    global0 = _wgslsmith_mod_vec3_i32(arg_2.b.zyx, vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-62236i, u_input.a.x), countOneBits(arg_2.b.xw))), _wgslsmith_div_i32(select(2147483647i, 0i ^ arg_2.a.x, false), max(~49543i, global0.x)), _wgslsmith_dot_vec4_i32(arg_2.b, arg_2.b)));
    let var_0 = arg_2;
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1645f)) * _wgslsmith_f_op_f32(round(392f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(0i, -20439i ^ -func_1(12109u, vec2<bool>(true, false), true)), 38779i);
    let var_0 = !(_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_u32(u_input.b.x, 18873u) ^ 38940u, Struct_3(func_3(global0.zy, 1u, vec4<i32>(u_input.a.x, global0.x, 2147483647i, global0.x), true)), Struct_1(u_input.a ^ u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 1i, -14961i, -2147483647i), vec4<i32>(u_input.a.x, 10303i, -1i, -31442i))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(1655f + -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(746f, -451f))));
    var var_1 = Struct_2(select(!(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, false))), !vec3<bool>(!var_0, any(vec3<bool>(var_0, var_0, var_0)), true), false), Struct_1(abs(_wgslsmith_clamp_vec2_i32(global0.yz, vec2<i32>(-36548i, 3074i), u_input.a)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-5371i, u_input.a.x), select(u_input.a, vec2<i32>(0i, global0.x), var_0)), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(-60673i, u_input.a.x, global0.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, global0.x, 2529i) | vec4<i32>(-1i, u_input.a.x, -2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1308f + 662f))));
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global0.x << (u_input.c % 32u), 1i & global0.x), 2407i), -_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, 4534i), -vec2<i32>(-1i, 0i))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(min(_wgslsmith_clamp_vec3_i32(~var_1.b.b.xxw, abs(var_1.b.b.yyw), var_1.b.b.xxw), var_1.b.b.yzw), _wgslsmith_div_vec3_i32(vec3<i32>(-35346i, ~u_input.a.x, -1i & global0.x), var_1.b.b.ywx)), func_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -1i), u_input.a) | ~global0.yy, ~var_1.b.b), func_1(u_input.c, var_1.a.xy, false)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_1.b.b.yyw, 11643i, _wgslsmith_f_op_f32(var_1.c * var_1.c));
}

