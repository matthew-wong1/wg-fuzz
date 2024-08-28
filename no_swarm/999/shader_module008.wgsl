struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(14714i, i32(-2147483648), 62198i, 27786i);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, 44373u, 1u)), Struct_1(true, vec3<f32>(1099f, -560f, 1122f)), i32(-2147483648));

var<private> global2: array<f32, 6> = array<f32, 6>(437f, 827f, -274f, 1134f, -1801f, -292f);

var<private> global3: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(579f, Struct_3(Struct_2(vec4<u32>(124562u, 4294967295u, 4294967295u, 15501u)), Struct_1(true, vec3<f32>(412f, -285f, -1111f)), 2147483647i)), Struct_4(803f, Struct_3(Struct_2(vec4<u32>(19910u, 42356u, 4294967295u, 13391u)), Struct_1(true, vec3<f32>(-426f, 806f, 194f)), 34838i)), Struct_4(-351f, Struct_3(Struct_2(vec4<u32>(25929u, 13115u, 97402u, 0u)), Struct_1(false, vec3<f32>(-824f, 261f, 1514f)), -5109i)), Struct_4(1803f, Struct_3(Struct_2(vec4<u32>(32694u, 23390u, 1u, 1u)), Struct_1(true, vec3<f32>(534f, -2678f, 1816f)), 1i)), Struct_4(658f, Struct_3(Struct_2(vec4<u32>(9045u, 22678u, 50106u, 1u)), Struct_1(true, vec3<f32>(-517f, 650f, -937f)), 49196i)), Struct_4(1720f, Struct_3(Struct_2(vec4<u32>(4522u, 1u, 17094u, 4294967295u)), Struct_1(false, vec3<f32>(450f, -1588f, -1013f)), -7405i)));

var<private> global4: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>) -> i32 {
    global0 = firstTrailingBit(vec4<i32>(~(~max(global0.x, 53795i)), -29293i, -(global1.c << (~arg_0.a % 32u)), _wgslsmith_mult_i32(global0.x, ~(~1i))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1256f, -1790f, false)), 1665f))))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, ~global1.a.a.x, reverseBits(1u)), _wgslsmith_clamp_vec3_u32(global1.a.a.wxz, ~vec3<u32>(global1.a.a.x, global1.a.a.x, arg_0.a), vec3<u32>(0u, 24213u, u_input.d.x))), u_input.d.x, ~firstTrailingBit(19991u)), 6u)]);
    global1 = Struct_3(global1.a, Struct_1(global1.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(971f, -822f, 1f))), i32(-1i) * -33265i);
    var var_1 = global1.b.b.xx;
    let var_2 = arg_0;
    return _wgslsmith_dot_vec2_i32(u_input.a.yx, _wgslsmith_sub_vec2_i32(global0.zz, ~(firstLeadingBit(global0.zx) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(68886i, 0i), u_input.a.zx, u_input.a.yz))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = -u_input.a.x;
    global0 = -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, _wgslsmith_mod_i32(func_3(Struct_5(u_input.c.x), vec4<bool>(global1.b.a, global1.b.a, false, true)), u_input.a.x), func_3(Struct_5(73873u), select(vec4<bool>(global1.b.a, true, arg_0, arg_0), vec4<bool>(global1.b.a, arg_0, false, arg_0), true))), ~vec4<i32>(1302i, _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.yz), u_input.a.x, abs(9583i)));
    let var_1 = u_input.c.x;
    let var_2 = Struct_2(firstLeadingBit(vec4<u32>(global1.a.a.x, 38072u, _wgslsmith_add_u32(var_1, _wgslsmith_div_u32(4294967295u, global1.a.a.x)), ~select(31273u, global1.a.a.x, global1.b.a))));
    var var_3 = 348f;
    return Struct_3(var_2, global1.b, 2147483647i);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.b.b.yx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.b.xx + vec2<f32>(global1.b.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 6u)])))))) - vec2<f32>(-2838f, global1.b.b.x));
    let var_1 = func_2(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-808f, global1.b.b.x, 1988f, global2[_wgslsmith_index_u32(global1.a.a.x, 6u)]))), vec4<f32>(265f, -1340f, _wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(abs(-481f))))))));
    var var_2 = _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i) * -abs(vec4<i32>(1i, arg_1, -52140i, arg_1))), reverseBits(vec4<i32>(-23293i, ~global0.x, global1.c, -(~u_input.a.x))));
    global2 = array<f32, 6>();
    global1 = var_1;
    return ~(~abs(min(u_input.b, u_input.c.x) << (~1u % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = -select(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1.c, global0.x, global1.c), vec4<i32>(34496i, u_input.a.x, global0.x, u_input.a.x)), -vec4<i32>(global1.c, u_input.a.x, 2147483647i, 0i)), reverseBits(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) & ~vec4<i32>(-5478i, global0.x, 0i, global0.x), !select(vec4<bool>(global1.b.a, global1.b.a, global1.b.a, global1.b.a), vec4<bool>(global1.b.a, global1.b.a, false, true), vec4<bool>(true, global1.b.a, global1.b.a, global1.b.a))), select(vec4<i32>(global0.x, global0.x, -6790i, global1.c), select(vec4<i32>(-2147483647i, 26671i, -2147483647i, 2147483647i), vec4<i32>(4552i, global1.c, u_input.a.x, global1.c), vec4<bool>(global1.b.a, false, global1.b.a, global1.b.a)), vec4<bool>(global1.b.a, global1.b.a, global1.b.a, true)) >> (((arg_0 & arg_0) << (~vec4<u32>(global1.a.a.x, arg_0.x, arg_1.x, 17197u) % vec4<u32>(32u))) % vec4<u32>(32u)), any(!vec4<bool>(global1.b.a, global1.b.a, true, global1.b.a)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(func_2(global1.b.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(280f, global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(32421u, 6u)], -940f)))))).b.b.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(arg_0.x, 6u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.b.x, -629f) + vec2<f32>(-1497f, -303f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.b.b.xy, global1.b.b.yy, vec2<bool>(false, true))) * vec2<f32>(1086f, global2[_wgslsmith_index_u32(51002u, 6u)]))))));
    global3 = array<Struct_4, 6>();
    global2 = array<f32, 6>();
    var var_1 = global0.x;
    return Struct_1(any(!vec2<bool>(all(vec4<bool>(false, true, true, global1.b.a)), true)), global1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(global0.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~u_input.a.x, global0.x & 1i), ~(~(-35989i)))), _wgslsmith_div_i32(~(-u_input.a.x) ^ global0.x, reverseBits(firstTrailingBit(global0.x ^ -1i))));
    let var_1 = func_4(vec4<u32>(~(u_input.d.x & 1u), _wgslsmith_add_u32(60474u | ~global1.a.a.x, func_1(!vec2<bool>(global1.b.a, true), global0.x)), ~min(u_input.c.x, u_input.d.x), ~_wgslsmith_sub_u32(min(u_input.c.x, global1.a.a.x), 26268u << (1u % 32u))), global1.a.a);
    global3 = array<Struct_4, 6>();
    var var_2 = var_1.b.x;
    global4 = firstTrailingBit(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~(-abs(reverseBits(global1.c))), 0u);
}

