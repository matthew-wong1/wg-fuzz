struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 4294967295u, 32296u, 12194u);

var<private> global1: i32;

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<u32>(0u, 12409u, 1u)), Struct_2(vec3<u32>(1u, 4294967295u, 1u)), Struct_2(vec3<u32>(50007u, 25079u, 33972u)), Struct_2(vec3<u32>(62033u, 4294967295u, 1u)), Struct_2(vec3<u32>(0u, 1u, 1u)), Struct_2(vec3<u32>(4294967295u, 0u, 35885u)), Struct_2(vec3<u32>(46978u, 59390u, 92187u)), Struct_2(vec3<u32>(48943u, 25039u, 30915u)), Struct_2(vec3<u32>(17710u, 0u, 0u)), Struct_2(vec3<u32>(26063u, 0u, 63612u)), Struct_2(vec3<u32>(22994u, 8447u, 4294967295u)), Struct_2(vec3<u32>(67758u, 1u, 1u)), Struct_2(vec3<u32>(4294967295u, 68733u, 13126u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(0u, 26u)];
    return select(vec4<bool>(!(var_0.a || false) && true, global3.x, true, any(!select(vec2<bool>(true, true), vec2<bool>(global3.x, var_0.a), var_0.a))), select(vec4<bool>(true, all(vec2<bool>(var_0.a, true)), global3.x, var_0.a), vec4<bool>(!var_0.a, false, var_0.a, all(vec4<bool>(global3.x, var_0.a, false, false))), vec4<bool>(select(var_0.a, !var_0.a, true), var_0.a, any(vec3<bool>(false, true, var_0.a)), false)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(step(-710f, arg_0.x)));
    global1 = arg_1.c;
    let var_1 = any(vec2<bool>(arg_1.a && true, !arg_1.a));
    let var_2 = select(func_3(~abs(arg_2) ^ _wgslsmith_mod_u32(5584u, arg_2 ^ arg_1.b)), vec4<bool>(all(vec3<bool>(arg_0.x >= -660f, any(vec2<bool>(true, false)), true)), global3.x | var_1, false, true), !(!select(vec4<bool>(global3.x, arg_1.a, var_1, true), vec4<bool>(true, true, true, var_1), vec4<bool>(arg_1.a, global3.x, true, false))));
    global0 = vec4<u32>(select(~(~_wgslsmith_mult_u32(arg_2, 66635u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 63344u), global0.zz & (global0.zy ^ vec2<u32>(59636u, arg_2))), (max(-2147483647i, 21970i) > _wgslsmith_add_i32(32667i, arg_1.d)) | (~2147483647i == _wgslsmith_div_i32(arg_1.c, arg_1.c))), arg_1.b, _wgslsmith_mod_u32(5655u, 37074u) << (0u % 32u), _wgslsmith_div_u32(arg_1.b, _wgslsmith_clamp_u32(u_input.a.x, arg_1.b, arg_2)));
    return Struct_2(u_input.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<bool> {
    global4 = array<Struct_2, 13>();
    var var_0 = 4294967295u;
    global1 = _wgslsmith_add_i32(firstTrailingBit(-47975i), 0i);
    global0 = reverseBits(firstLeadingBit(abs(~vec4<u32>(arg_3.a.x, u_input.a.x, arg_1.a.x, arg_1.a.x)))) << (select(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23843u) >> (vec4<u32>(1u, 56719u, 55104u, global0.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, arg_1.a.x, 4294967295u, 34028u), vec4<u32>(u_input.a.x, arg_3.a.x, 38804u, 48067u))), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, arg_3.a.x, 33784u, 1u), vec4<u32>(0u, 0u, u_input.a.x, 46645u))), select(!vec4<bool>(global3.x, global3.x, false, global3.x), !vec4<bool>(global3.x, true, false, global3.x), !select(vec4<bool>(true, false, global3.x, false), vec4<bool>(false, global3.x, false, true), vec4<bool>(global3.x, true, true, global3.x)))) % vec4<u32>(32u));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy + vec2<f32>(-737f, 529f)) - arg_0.yx)) - arg_0.zx), Struct_1(global3.x, 28721u, ~0i, -(~(-19570i))), 0u);
    return vec2<bool>(27393i != _wgslsmith_add_i32(12478i, -arg_2.x), all(select(select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(false, false, global3.x, global3.x)), func_3(u_input.a.x), select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, false, global3.x, false), true))) == true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = ~(~(~reverseBits(~vec4<u32>(0u, arg_1.x, global0.x, 1u))));
    global3 = select(!func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 218f, 474f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-948f, 751f, -680f)))), Struct_2(u_input.a), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.e), -arg_0.x, u_input.d << (46993u % 32u), ~u_input.c.x), func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(955f, -1613f))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, var_0.x), 26u)], ~var_0.x)), vec2<bool>(true || global3.x, global3.x), (~u_input.e >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.x, u_input.a.x), 1u, ~var_0.x) % 32u)) >= -select(abs(u_input.b), u_input.c.x, global3.x));
    global4 = array<Struct_2, 13>();
    global2 = array<Struct_1, 26>();
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.x, 98586u, reverseBits(_wgslsmith_dot_vec3_u32(var_0.zwy, vec3<u32>(arg_1.x, 4294967295u, 73800u)))), firstTrailingBit(abs(arg_1))));
    return vec3<i32>(arg_0.x, firstTrailingBit(-1i) >> (abs(var_0.x ^ ~var_1.a.x) % 32u), 0i);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> StorageBuffer {
    global1 = _wgslsmith_mod_i32(arg_0.x, u_input.e);
    let var_0 = func_2(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, -737f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(540f - arg_1.x)) != _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(arg_1.x))), 43597u, firstTrailingBit(-u_input.b) >> (56655u % 32u), abs(-70708i)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), ~global0.zw, true), vec2<u32>(global0.x, 4294967295u)), u_input.a.yz));
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.a.x, var_0.a.x, u_input.a.x), vec4<u32>(12021u, arg_2.b, arg_2.b, arg_2.b))), _wgslsmith_sub_u32(var_0.a.x ^ 0u, _wgslsmith_add_u32(0u, 3222u)), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(11728u, 20093u, 0u)))), firstTrailingBit(4294967295u), 4294967295u, var_0.a.x));
    var var_2 = select(!(!vec3<bool>(arg_3.x && global3.x, false, any(arg_3))), !vec3<bool>(arg_3.x || arg_3.x, !(!arg_2.a), -22141i <= arg_2.c), vec3<bool>(global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f)))) != -420f, false));
    var var_3 = arg_2;
    return StorageBuffer(countOneBits(-u_input.e), ~(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -6409i, arg_2.d, 1i), vec4<i32>(u_input.d, var_3.c, -17583i, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, 1u, ~global0.x), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, global0.x, 31596u)), ~u_input.a), select(min(u_input.a, global0.www), vec3<u32>(u_input.a.x, 1u, global0.x) << (global0.wyz % vec3<u32>(32u)), u_input.b < -1i))));
    var var_1 = global3.x;
    let var_2 = global3.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1441f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-327f))));
    let var_4 = !(!(u_input.d != ~u_input.c.x));
    let x = u_input.a;
    s_output = func_5(func_1(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.e, -12728i), vec4<i32>(2147483647i, u_input.c.x, u_input.e, 45851i)), var_0.a) & ~(-firstLeadingBit(vec3<i32>(-2903i, 2147483647i, u_input.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1029f)), _wgslsmith_f_op_f32(-259f + 1266f), var_3) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1347f, var_3, var_3) - vec3<f32>(var_3, var_3, 1504f))))), global2[_wgslsmith_index_u32(global0.x, 26u)], vec2<bool>(all(func_3(~1u)), any(!select(vec2<bool>(var_4, false), vec2<bool>(true, true), global3.x))));
}

