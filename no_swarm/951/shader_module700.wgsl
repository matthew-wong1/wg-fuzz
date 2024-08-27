struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(20325u, 0u, 4294967295u), vec3<u32>(12824u, 0u, 8053u), vec3<u32>(1951u, 72130u, 0u), vec3<u32>(69576u, 0u, 18673u), vec3<u32>(19337u, 62995u, 4294967295u), vec3<u32>(4294967295u, 1u, 28119u), vec3<u32>(46915u, 0u, 0u), vec3<u32>(51762u, 0u, 0u), vec3<u32>(64080u, 1u, 1u), vec3<u32>(1u, 0u, 21928u), vec3<u32>(30272u, 4294967295u, 50016u), vec3<u32>(61967u, 105599u, 4603u), vec3<u32>(30796u, 9742u, 7463u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 1312u, 27278u), vec3<u32>(0u, 1u, 1u), vec3<u32>(24259u, 63070u, 0u));

var<private> global2: i32;

var<private> global3: array<f32, 7> = array<f32, 7>(405f, 1264f, -1848f, 304f, -848f, 1564f, 1196f);

var<private> global4: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(0u, 63087u, 0u), vec3<u32>(0u, 1613u, 57279u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 1u, 97140u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_3(global0.c.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(317f, 467f) + vec2<f32>(183f, 352f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(arg_0.d.x, 7u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(545f, 1086f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], 430f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1171f, 1070f)))))));
    var var_2 = Struct_3(~(-((var_0.a << (0u % 32u)) & -7543i)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(global0.c.b.yz >> (arg_0.d.zy % vec2<u32>(32u)), global0.c.b.yz), -abs(~vec4<i32>(2147483647i, arg_0.b.x, var_0.a, 2147483647i)), false, vec3<u32>(max(u_input.a, arg_0.d.x) & 22011u, firstTrailingBit(~121227u), min(firstLeadingBit(arg_1.x), _wgslsmith_clamp_u32(1u, 1u, arg_0.d.x)))), global0.b, arg_0);
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-311f, var_1.x))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1401f, -1210f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global3[_wgslsmith_index_u32(var_3.c.d.x, 7u)]), vec2<f32>(var_1.x, -1486f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1098f)))))))));
    return firstTrailingBit(vec4<i32>(-arg_0.a.x << (1u % 32u), var_0.a, 1i, 0i));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    var var_0 = Struct_3(_wgslsmith_add_i32(~firstLeadingBit(15319i), _wgslsmith_clamp_i32(global0.b, (20341i >> (u_input.a % 32u)) ^ firstTrailingBit(2195i), ~abs(global0.b))));
    global2 = select(_wgslsmith_dot_vec4_i32((_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global0.c.a.x, global0.b, global0.b), arg_1.a.b, arg_1.c.b) >> (select(vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, 0u, 0u), vec4<bool>(true, arg_1.a.c, false, true)) % vec4<u32>(32u))) & ~func_3(arg_1.c, vec2<u32>(arg_1.a.d.x, arg_1.a.d.x)), arg_1.a.b), global0.b, !all(!(!vec3<bool>(false, false, global0.c.c))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, -1651f) * vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.a, 7u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2326f), -276f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.c.d.x, 7u)]) + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 7u)] + var_1.x))) - _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(-726f, -715f)))), 277f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(f32(-1f) * -141f));
    let var_1 = var_0.xy;
    let var_2 = Struct_3(arg_1.b.x);
    let var_3 = 4294967295u;
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(-399f * var_1.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1522f - var_0.x) + arg_0.x), Struct_2(global0.a, 32820i, arg_1))), 242f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], var_1.x, global3[_wgslsmith_index_u32(1u, 7u)])))), _wgslsmith_div_vec3_f32(vec3<f32>(-430f, -542f, 380f), vec3<f32>(-440f, 1401f, arg_0.x))), _wgslsmith_f_op_vec3_f32(trunc(arg_0)), true))));
    return Struct_2(global0.c, var_2.a, global0.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = Struct_4(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2(1594f, Struct_2(Struct_1(global0.c.b.zz, global0.a.b, true, vec3<u32>(50442u, 0u, 81575u)), global0.a.a.x, global0.a))), _wgslsmith_f_op_f32(752f - 1324f), global3[_wgslsmith_index_u32(~u_input.a, 7u)]), Struct_1(vec2<i32>(16291i >> (arg_0.x % 32u), _wgslsmith_div_i32(1i, global0.c.a.x)), global0.c.b, any(select(vec3<bool>(true, false, global0.a.c), vec3<bool>(global0.c.c, false, false), vec3<bool>(true, global0.a.c, global0.c.c))), global0.a.d)), vec2<i32>(0i, countOneBits(arg_1)), Struct_3(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(674f, global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, global3[_wgslsmith_index_u32(0u, 7u)], -405f) - vec3<f32>(-128f, global3[_wgslsmith_index_u32(arg_0.x, 7u)], -665f)))), Struct_1(global0.c.a, ~global0.c.b, true, min(arg_0.wzx, vec3<u32>(arg_0.x, arg_0.x, 75956u)))).b));
    var var_1 = var_0.c;
    global4 = array<vec3<u32>, 4>();
    var var_2 = Struct_4(Struct_2(global0.a, 26920i, var_0.a.c), -vec2<i32>(-28921i, global0.a.a.x), Struct_3(var_1.a));
    global4 = array<vec3<u32>, 4>();
    return 25252u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 4>();
    var var_0 = ~abs(global0.c.d.zz);
    var var_1 = Struct_3(-955i);
    var_1 = Struct_3(20142i);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(round(-1000f)))), global3[_wgslsmith_index_u32(0u, 7u)], 1000f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(31130u, 1u, global0.c.d.x, 72290u) | vec4<u32>(u_input.a, 0u, var_0.x, 38190u)), vec4<u32>(global0.c.d.x ^ 27013u, 4294967295u, func_1(vec4<u32>(3319u, 10456u, var_0.x, 58540u), global0.b), 1u)), 7u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1730f, global3[_wgslsmith_index_u32(21181u, 7u)], 893f, -201f) + vec4<f32>(-1056f, global3[_wgslsmith_index_u32(var_0.x, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-388f, global3[_wgslsmith_index_u32(global0.a.d.x, 7u)], global3[_wgslsmith_index_u32(global0.c.d.x, 7u)], -698f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, 2059f, 481f, 2340f) - vec4<f32>(122f, -716f, -360f, global3[_wgslsmith_index_u32(1u, 7u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, -748f, 1054f, global3[_wgslsmith_index_u32(var_0.x, 7u)]) + vec4<f32>(918f, global3[_wgslsmith_index_u32(3219u, 7u)], global3[_wgslsmith_index_u32(5302u, 7u)], global3[_wgslsmith_index_u32(global0.c.d.x, 7u)])))), vec4<f32>(_wgslsmith_f_op_f32(select(1399f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)]), global0.a.c)), global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1298f, global3[_wgslsmith_index_u32(u_input.a, 7u)], -855f) * vec3<f32>(global3[_wgslsmith_index_u32(global0.c.d.x, 7u)], 1000f, 141f)), func_4(vec3<f32>(global3[_wgslsmith_index_u32(0u, 7u)], 347f, -1213f), global0.a).c).a.d.x, 7u)], global3[_wgslsmith_index_u32(22097u, 7u)], global3[_wgslsmith_index_u32(85507u, 7u)]))));
    var var_3 = Struct_3(-6585i);
    global2 = -var_3.a;
    var var_4 = vec2<u32>(~(~(u_input.a << (var_0.x % 32u))), ~(~(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-663f)))), _wgslsmith_f_op_f32(step(-1000f, global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_add_u32(4294967295u, u_input.a)), 7u)])), 32823u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -179f, -1000f, global3[_wgslsmith_index_u32(95927u, 7u)]))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(1519u, 7u)], global3[_wgslsmith_index_u32(3731u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], var_2.x)))))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global0.c.d.yx >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), global0.a.d.zx), vec2<u32>(u_input.a & 4294967295u, firstTrailingBit(u_input.a)), global0.a.d.yz), ~reverseBits(firstLeadingBit(global0.c.d.zy))));
}

