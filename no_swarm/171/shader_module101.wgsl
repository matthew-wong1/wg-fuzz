struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -28512i);

var<private> global1: Struct_2;

var<private> global2: array<u32, 23> = array<u32, 23>(730u, 4294967295u, 15916u, 60005u, 1u, 46325u, 1u, 0u, 52469u, 1u, 50211u, 67730u, 1u, 30687u, 89219u, 0u, 2575u, 4294967295u, 4294967295u, 27527u, 0u, 47247u, 18824u);

var<private> global3: array<u32, 9> = array<u32, 9>(26605u, 4294967295u, 1u, 43842u, 130u, 4294967295u, 9689u, 110045u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec3<i32>(-1i) * -(firstTrailingBit(min(vec3<i32>(global0.x, -2211i, -2147483647i), vec3<i32>(1i, -24648i, global0.x))) | reverseBits(~vec3<i32>(global0.x, global1.b.c, 0i)));
    global3 = array<u32, 9>();
    var var_1 = !all(!select(vec4<bool>(global1.b.b.x, global1.b.b.x, false, global1.b.b.x), !vec4<bool>(global1.b.b.x, true, true, true), true));
    let var_2 = var_0;
    global1 = Struct_2(u_input.a.x, Struct_1(-12759i, vec2<bool>(false, all(select(vec4<bool>(global1.b.b.x, false, global1.b.b.x, false), vec4<bool>(false, global1.b.b.x, global1.b.b.x, global1.b.b.x), false))), 0i));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = arg_0.zx;
    let var_1 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, ~abs(arg_3)), ~global1.a));
    var var_2 = Struct_2(firstTrailingBit(~select(func_3(u_input.a), _wgslsmith_div_u32(global1.a, u_input.a.x), false && global1.b.b.x)), Struct_1(1i, global1.b.b, -_wgslsmith_add_i32(2147483647i, arg_2)));
    global3 = array<u32, 9>();
    let var_3 = vec3<i32>(~(-(global0.x << (_wgslsmith_clamp_u32(4294967295u, global1.a, global1.a) % 32u))), -1i, -46243i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1357f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, 1571f)), 799f, arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x))) - arg_1), vec4<f32>(1596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, 245f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(arg_2, global1.a & 4294967295u, _wgslsmith_dot_vec3_i32(arg_2, arg_2), global1.a)), -1484f)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -412f))))));
    let var_1 = _wgslsmith_f_op_f32(-486f * _wgslsmith_f_op_f32(floor(-1606f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(565f)), arg_1.x)))));
    var var_2 = global1.b.a;
    let var_3 = vec4<f32>(-2746f, _wgslsmith_f_op_f32(f32(-1f) * -1310f), arg_1.x, _wgslsmith_f_op_f32(1376f - -197f));
    global0 = vec2<i32>(_wgslsmith_sub_i32(min(-19857i, arg_0.c), ~(i32(-1i) * -global0.x)), arg_2.x);
    return Struct_2(~global3[_wgslsmith_index_u32(~9470u, 9u)], arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(select(vec2<i32>(~(-23959i), _wgslsmith_add_i32(global1.b.c, global0.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-9086i, global0.x) >> (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1129u, 9u)], 9u)], 6553u) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), ~(-vec2<i32>(global0.x, global0.x)), -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(-1i, global1.b.a))), true), firstTrailingBit(vec2<i32>(-global0.x & ~(-2147483647i), global0.x)));
    var var_0 = func_1(Struct_1(-global1.b.a, !(!(!vec2<bool>(global1.b.b.x, false))), global1.b.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-1f), -649f, -1964f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(603f, -1000f, -1000f, _wgslsmith_div_f32(-927f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(359f, -102f, 1255f, -370f) * vec4<f32>(-1079f, 1086f, -1000f, 1486f)))))), !select(true, global1.b.b.x, global1.b.b.x) || (true == !global1.b.b.x))), firstTrailingBit(~(vec3<i32>(-34606i, global1.b.c, -31177i) << (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x, 39154u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1216f - -286f) + _wgslsmith_f_op_f32(min(-787f, 1283f))))))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.a, -var_0.b.c, _wgslsmith_div_i32(-43082i, 6305i), abs(21113i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, global1.b.c, -1i, global0.x)), max(vec4<i32>(0i, -7246i, 14820i, var_0.b.c), vec4<i32>(global0.x, global0.x, var_0.b.c, -1i))), ~vec4<i32>(1i, global1.b.a, 12330i, 0i) ^ -vec4<i32>(global1.b.c, -44547i, 12069i, -53527i)), -159f, -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(45192i, global0.x, 47069i, 22635i), -vec4<i32>(var_0.b.a, global1.b.c, global0.x, -1i)), global0.x, ~_wgslsmith_clamp_i32(var_0.b.c, global1.b.a, -1i), abs(-13933i)));
}

