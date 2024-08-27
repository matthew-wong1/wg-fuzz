struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(651f, 443f), vec2<f32>(-538f, 697f), vec2<f32>(-1391f, -1319f), vec2<f32>(533f, 698f), vec2<f32>(-438f, -1000f), vec2<f32>(457f, -195f), vec2<f32>(-310f, -2090f), vec2<f32>(212f, 409f), vec2<f32>(2117f, -164f), vec2<f32>(-485f, 1680f), vec2<f32>(709f, 862f), vec2<f32>(-1316f, -2288f));

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32> = vec4<u32>(18226u, 58747u, 0u, 4294967295u);

var<private> global3: vec2<i32> = vec2<i32>(-13210i, 7072i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<u32> {
    global3 = firstTrailingBit(min(u_input.a.wy, u_input.a.xw));
    var var_0 = firstTrailingBit(firstTrailingBit(global2.yyz)) | max(global2.wyx, ~vec3<u32>(_wgslsmith_mod_u32(45144u, global2.x), 0u, firstTrailingBit(global2.x)));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global2 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(select(u_input.b.x, var_0.x, false), firstLeadingBit(0u), 2386u, global2.x)), vec4<u32>(~_wgslsmith_mod_u32(abs(u_input.b.x), ~54091u), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 60306u, 4294967295u, global2.x), vec4<u32>(31719u, global1.x, 1u, global1.x)), 1u), 0u, ~(~4294967295u)));
    return reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~global1.x, u_input.b.x >> (50486u % 32u)), ~select(0u, 15947u, true), u_input.b.x, reverseBits(30198u)), ~((vec4<u32>(39052u, 0u, 1u, global2.x) >> (vec4<u32>(global2.x, global1.x, 4294967295u, var_0.x) % vec4<u32>(32u))) & ~vec4<u32>(global2.x, 4294967295u, 4294967295u, 25233u))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<bool>(true, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false && (u_input.d > min(1i, _wgslsmith_sub_i32(global3.x, u_input.a.x))), false);
    let var_1 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~u_input.a.zz, _wgslsmith_add_vec2_i32(u_input.a.wy & u_input.a.xw, abs(vec2<i32>(-25162i, -52415i)))), ~_wgslsmith_sub_i32(firstTrailingBit(-16682i), 1i), max(-firstLeadingBit(u_input.c), global3.x)) | countOneBits(vec4<i32>(u_input.d, -1i, _wgslsmith_add_i32(-21968i, 1i >> (u_input.b.x % 32u)), -(~87234i)));
    global2 = _wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, firstTrailingBit(44714u), global2.x, global1.x), select(func_3(), vec4<u32>(~global1.x, global2.x, ~(31046u << (global2.x % 32u)), ~(~u_input.b.x)), select(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x), !vec4<bool>(true, var_0.x, true, false), any(var_0.xzw)), vec4<bool>(true, var_0.x, u_input.d <= 0i, true), select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true))))));
    global1 = global2.zx;
    global2 = vec4<u32>(abs(u_input.b.x), countOneBits(4294967295u), 32936u, ~abs(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(11596u, global2.x)))));
    return Struct_2(Struct_1(select(vec4<bool>(any(vec4<bool>(true, false, var_0.x, true)), true, var_0.x, var_0.x && false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, any(vec2<bool>(true, var_0.x)), var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, false)))), var_1.x, -_wgslsmith_div_i32(global3.x, global3.x), !select(vec4<bool>(var_0.x, false, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), true)), Struct_1(!(!(!vec4<bool>(false, false, false, var_0.x))), ~_wgslsmith_dot_vec3_i32(-u_input.a.xzy, var_1.wxy), _wgslsmith_mult_i32(var_1.x, 1i) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(17105u, u_input.b.x), vec2<u32>(u_input.b.x, 60983u)) % 32u), select(!(!vec4<bool>(var_0.x, false, true, false)), select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false), var_1.x != -39607i), any(vec2<bool>(var_0.x, var_0.x)))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(~1u), 4294967295u), 12u)], Struct_1(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x)), 1i, var_1.x, select(!vec4<bool>(false, var_0.x, false, var_0.x), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, var_0.x, true, var_0.x), true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), any(!var_0.yz))), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = ~abs(0u);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<i32>) -> u32 {
    global3 = vec2<i32>(select(-1i, arg_2.x, arg_0.b.a.x & true) << (~min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global2.x, 20269u), vec4<u32>(global1.x, 0u, global2.x, 5455u)), u_input.b.x) % 32u), _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -1i), _wgslsmith_div_vec3_i32(u_input.a.xxz, vec3<i32>(arg_2.x, arg_0.a.b, -1i))), -(~u_input.a.zwy), !arg_0.b.d.wyz), -vec3<i32>(~(-29521i), 1i, 1i)));
    var var_0 = arg_0.a;
    var_0 = func_2().d;
    var var_1 = !func_2().b.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, arg_0.c.x, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 818f, 371f))))))));
    return _wgslsmith_div_u32(~1u, ~abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(u_input.b.x, 0u, countOneBits(firstLeadingBit(~select(global1.x, 4294967295u, true))), ~func_4(func_1(Struct_1(vec4<bool>(true, true, true, false), -21564i, -3613i, vec4<bool>(false, true, true, true)), vec2<bool>(true, true)), firstLeadingBit(~vec3<u32>(25012u, 15914u, 4294967295u)), -vec3<i32>(u_input.a.x, -2147483647i, -25566i) | u_input.a.yxw));
    var var_0 = !select(vec4<bool>(true, global2.x >= ~1u, true, false), !vec4<bool>(true, u_input.c >= 34071i, true, false), true);
    let var_1 = _wgslsmith_f_op_f32(step(-351f, 224f));
    global0 = array<vec2<f32>, 12>();
    var var_2 = _wgslsmith_f_op_f32(sign(-1305f));
    global3 = max(select(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c), select(abs(vec2<i32>(global3.x, -2147483647i)), u_input.a.xy, vec2<bool>(all(var_0.zy), all(vec3<bool>(true, false, var_0.x)))), var_0.yx), (u_input.a.yy ^ (select(u_input.a.xx, u_input.a.zy, vec2<bool>(false, var_0.x)) & reverseBits(vec2<i32>(global3.x, 0i)))) >> (u_input.b % vec2<u32>(32u)));
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 33628u, select(global2.xxw, func_3().wwz, vec3<bool>(!(var_0.x && var_0.x), all(select(var_0.zy, var_0.xx, vec2<bool>(true, var_0.x))), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 689f, 1154f))))));
}

