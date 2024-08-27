struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(6760u, 48304u, 53918u, 1u), -147f), Struct_1(vec4<u32>(0u, 0u, 0u, 64449u), -819f), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 64895u), -735f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), 1146f), Struct_1(vec4<u32>(23958u, 1u, 83571u, 1u), 726f), Struct_1(vec4<u32>(4294967295u, 68304u, 17250u, 4294967295u), -190f), Struct_1(vec4<u32>(33415u, 63151u, 65542u, 1u), 807f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u), -387f), Struct_1(vec4<u32>(55353u, 45334u, 1u, 46610u), 1110f), Struct_1(vec4<u32>(27915u, 0u, 21525u, 12471u), -1000f), Struct_1(vec4<u32>(4294967295u, 26752u, 1u, 14747u), -799f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 16079u), -1000f), Struct_1(vec4<u32>(12314u, 0u, 23369u, 0u), 574f), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), 121f), Struct_1(vec4<u32>(49448u, 1u, 4294967295u, 0u), 110f), Struct_1(vec4<u32>(68294u, 0u, 45151u, 0u), 333f), Struct_1(vec4<u32>(4294967295u, 17017u, 4294967295u, 41816u), -289f), Struct_1(vec4<u32>(68262u, 91676u, 35864u, 0u), -538f), Struct_1(vec4<u32>(157677u, 4294967295u, 0u, 0u), -1379f), Struct_1(vec4<u32>(47476u, 16480u, 4076u, 4294967295u), -1000f), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), -2419f), Struct_1(vec4<u32>(0u, 1u, 71903u, 48952u), 1211f), Struct_1(vec4<u32>(19226u, 22895u, 0u, 78145u), -888f), Struct_1(vec4<u32>(15003u, 51664u, 31896u, 1u), 235f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 41230u), 158f));

var<private> global2: array<Struct_3, 32>;

var<private> global3: array<vec2<u32>, 23>;

var<private> global4: vec3<f32> = vec3<f32>(1306f, 1257f, -533f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    return ~(arg_0 & _wgslsmith_clamp_u32(4294967295u, 1u, select(1u, arg_0, arg_1)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> i32 {
    return _wgslsmith_add_i32(arg_1.a.x, ~arg_1.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_2 {
    global2 = array<Struct_3, 32>();
    let var_0 = -vec4<i32>(2147483647i, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(~(~3879i), select(abs(4987i), _wgslsmith_clamp_i32(2088i, 10778i, -1i), true)), func_4(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_3.a.x, arg_3.a.x, 31220u), vec4<u32>(arg_3.a.x, 1u, u_input.a, arg_3.a.x), vec4<u32>(arg_3.a.x, 12683u, arg_3.a.x, 13197u)), _wgslsmith_f_op_f32(-389f - arg_2.x)), Struct_2(abs(vec4<i32>(0i, -2147483647i, 22261i, 1i)), abs(1i), vec3<u32>(u_input.a, arg_3.a.x, 4294967295u) << (vec3<u32>(u_input.a, 8745u, u_input.a) % vec3<u32>(32u)), min(vec3<u32>(32484u, 9736u, arg_3.a.x), vec3<u32>(u_input.a, u_input.a, arg_3.a.x)), func_3(arg_3.a.x, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(670f)) + _wgslsmith_f_op_f32(round(arg_2.x))), global2[_wgslsmith_index_u32(0u, 32u)]));
    global0 = array<Struct_5, 29>();
    var var_1 = 65569u;
    var var_2 = u_input.a;
    return Struct_2(var_0, var_0.x, reverseBits(~(~vec3<u32>(arg_3.a.x, u_input.a, 48340u)) ^ firstTrailingBit(vec3<u32>(arg_3.a.x, 40115u, 4294967295u) | vec3<u32>(arg_3.a.x, 8577u, 4294967295u))), ~(~vec3<u32>(~35320u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 21419u, 1u, u_input.a), vec4<u32>(17015u, u_input.a, 8260u, 0u)), ~4294967295u)), arg_3.a.x);
}

fn func_1(arg_0: f32) -> u32 {
    global1 = array<Struct_1, 25>();
    var var_0 = true;
    let var_1 = func_2(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), !select(false, true, true)), vec2<bool>(true, true)), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0), Struct_4(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a) >> (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)))));
    global1 = array<Struct_1, 25>();
    var var_2 = Struct_2(vec4<i32>(2147483647i, var_1.b, var_1.b, var_1.a.x), min(-(-var_1.a.x << (~4294967295u % 32u)), -(-2147483647i & ~var_1.b)), _wgslsmith_mod_vec3_u32(~var_1.d, max(var_1.d, var_1.c)), ~var_1.c, _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.a, var_1.d.x) ^ u_input.a, func_3(2566u, true)));
    return _wgslsmith_clamp_u32(func_2(vec2<bool>(false, true), all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), global4.xy, Struct_4(vec2<u32>(~var_2.d.x, var_2.e | 84124u))).c.x, firstTrailingBit(80952u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(8296i, 34500i), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-1i, 0i)), max(vec2<i32>(14820i, -1i), vec2<i32>(-13375i, -2147483647i))))), vec2<i32>(0i, _wgslsmith_clamp_i32(~(1i >> (0u % 32u)), ~1i, min(2147483647i, 26470i) >> (u_input.a % 32u))));
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_1(_wgslsmith_f_op_f32(global4.x * global4.x)), countOneBits(~(~u_input.a))), 23u)]);
    global1 = array<Struct_1, 25>();
    var var_2 = Struct_4(global3[_wgslsmith_index_u32(u_input.a, 23u)]);
    let var_3 = global1[_wgslsmith_index_u32(6457u & ~var_1.a.x, 25u)];
    let var_4 = _wgslsmith_mod_i32(0i, ~(~var_0.x) & -13320i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-countOneBits(-1985i), var_4), -45873i);
}

