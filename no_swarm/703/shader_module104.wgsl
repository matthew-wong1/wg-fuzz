struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-98180i, 11097i, 35845i, 2147483647i);

var<private> global1: vec3<bool>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(26235u, 6256u, 78029u), vec3<i32>(0i, 3135i, -1i), vec3<i32>(0i, -1i, 21101i), 1469f), Struct_1(vec3<u32>(0u, 61571u, 39112u), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(-10189i, -1i, -1i), 1883f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    global3 = array<Struct_1, 2>();
    let var_0 = vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -584f), -432f);
    let var_1 = Struct_1(arg_1.a, ~select(global0.zxy, abs(global0.ywx) << ((arg_2.a ^ arg_2.a) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), true)), vec3<i32>(firstLeadingBit(1i) ^ arg_2.b.x, global0.x, -49348i), arg_1.d);
    var var_2 = global1.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -871f)))) * _wgslsmith_f_op_f32(f32(-1f) * -547f));
    return vec4<bool>(2601u <= ~(~u_input.b), any(select(!select(global1.yy, vec2<bool>(false, global1.x), global1.x), select(select(global1.yz, vec2<bool>(global1.x, true), vec2<bool>(true, global1.x)), select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(global1.x, global1.x)), global1.yz), true)), !(!(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)) || select(true, global1.x, true))), global1.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(0i);
    global0 = arg_0;
    global1 = !(!(!vec3<bool>(!global1.x, all(global1.yz), true)));
    global1 = vec3<bool>(all(func_3(vec2<u32>(_wgslsmith_mod_u32(u_input.b, arg_2.a.x), 10997u), Struct_1(_wgslsmith_add_vec3_u32(arg_2.a, vec3<u32>(26122u, u_input.a.x, 46620u)), arg_2.b, ~vec3<i32>(-22403i, -2147483647i, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -747f)), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.x, 23600u, 80208u), vec3<u32>(1u, 0u, 12686u)), _wgslsmith_add_vec3_i32(arg_2.c, vec3<i32>(-32645i, -1i, -51777i)), abs(vec3<i32>(-2147483647i, -17860i, global0.x)), _wgslsmith_f_op_f32(exp2(arg_2.d))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(44796u, u_input.a.x, arg_2.a.x, u_input.a.x), vec4<u32>(arg_2.a.x, u_input.a.x, arg_2.a.x, 1u))))), select(true, !any(select(arg_1, vec2<bool>(arg_1.x, true), arg_1)), true), arg_1.x);
    global1 = vec3<bool>(!any(select(!vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, arg_1.x, global1.x, true), !vec4<bool>(arg_1.x, true, true, false))), 1i <= firstLeadingBit(~arg_2.c.x << (_wgslsmith_clamp_u32(u_input.a.x, 25458u, 0u) % 32u)), arg_1.x);
    return u_input.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = vec2<u32>(~min(1u, func_2(vec4<i32>(-5026i, 13920i, 0i, arg_1.c.x), global1.yz, Struct_1(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.c, vec3<i32>(global0.x, -37066i, 34814i), -1890f))) | 4294967295u, arg_2);
    var var_1 = select(vec4<bool>(all(func_3(vec2<u32>(1u, var_0.x), Struct_1(vec3<u32>(26271u, arg_1.a.x, arg_1.a.x), vec3<i32>(arg_1.b.x, 2147483647i, global0.x), global0.zwz, arg_1.d), arg_1, vec4<u32>(1u, 16969u, u_input.b, 1u)).zxw), false, all(vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), true)), !(!global1.x) && global1.x), vec4<bool>((select(false, global1.x, global1.x) != global1.x) & global1.x, global1.x, global1.x, all(func_3(firstLeadingBit(arg_1.a.zx), arg_1, global3[_wgslsmith_index_u32(var_0.x, 2u)], vec4<u32>(58777u, 0u, 0u, 30669u)).yx)), vec4<bool>(global1.x, !(all(vec4<bool>(true, true, global1.x, true)) | (0i == global0.x)), !(~arg_2 <= 4294967295u), _wgslsmith_add_u32(0u, ~5487u) <= ~(~var_0.x)));
    let var_2 = arg_1.d;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d))))) + 2042f);
    let var_3 = global3[_wgslsmith_index_u32(0u, 2u)];
    return 1u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(~_wgslsmith_add_i32(11999i, i32(-1i) * -35238i), -2147483647i, global0.x);
    global0 = (vec4<i32>(-26063i << (_wgslsmith_div_u32(u_input.a.x, arg_0.a.x) % 32u), 0i << (1u % 32u), reverseBits(arg_0.b.x), min(var_0.x, -1i)) | vec4<i32>(5366i, _wgslsmith_add_i32(firstTrailingBit(arg_0.b.x), 1i), 7002i, _wgslsmith_sub_i32(arg_0.b.x, var_0.x) << (~arg_0.a.x % 32u))) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a.x, 7810u, 16038u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u), vec4<u32>(u_input.b, 0u, u_input.b, 0u), vec4<u32>(0u, 4294967295u, 46939u, 27533u))) >> (~(~vec4<u32>(37552u, arg_0.a.x, 2581u, 1u)) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.a.x, 4294967295u, 1u, 0u)), false && any(vec2<bool>(false, false))) % vec4<u32>(32u));
    global0 = vec4<i32>(_wgslsmith_sub_i32(arg_0.b.x, -21737i) << (~_wgslsmith_div_u32(min(7413u, u_input.a.x), arg_0.a.x) % 32u), -2147483647i, -_wgslsmith_sub_i32(2147483647i, ~max(arg_0.b.x, 2147483647i)), (abs(_wgslsmith_sub_i32(24303i, 0i)) | global0.x) | 2147483647i);
    var var_1 = 1000f;
    let var_2 = Struct_1(arg_0.a, global0.zyz, global0.wzy, -1469f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(~global0.zzy, vec3<i32>(firstLeadingBit(2147483647i), global0.x << (u_input.b % 32u), -global0.x))), -firstTrailingBit(~(-global0.wxz)));
    let var_1 = func_4(Struct_1(vec3<u32>(u_input.b, func_1(var_0.x ^ var_0.x, global3[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 2u)], ~u_input.a.x), 5352u), min(-countOneBits(global0.xwy), global0.xwz), global0.xzz, -361f));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d, var_1.d, var_1.d))))) - vec3<f32>(-1146f, var_1.d, _wgslsmith_f_op_f32(step(-1000f, var_1.d))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, -1183f, -333f))), vec3<f32>(var_1.d, _wgslsmith_f_op_f32(var_1.d + var_1.d), _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d, var_1.d, var_1.d))))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-286f))) + 431f) - 136f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * -1000f)))))));
    global2 = -1021f;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~_wgslsmith_mult_u32(~(~u_input.a.x), u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -195f)))), _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(select(106f, -844f, global1.x))))));
}

