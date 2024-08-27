struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, true, true));

var<private> global2: array<f32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.e.x, 27u)]));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_1.e.x, ~_wgslsmith_sub_u32(14286u, u_input.d), abs(_wgslsmith_dot_vec4_u32(arg_1.e, vec4<u32>(arg_1.e.x, 4294967295u, 30454u, arg_1.e.x))), ~(~63132u)), vec4<u32>(_wgslsmith_div_u32(0u | u_input.a, 0u), arg_1.d.x, 0u, ~(u_input.e.x & arg_1.d.x))), arg_1.e, _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, ~36623u, arg_1.d.x)), ~select(~vec4<u32>(u_input.a, 0u, 18786u, arg_1.e.x), arg_1.e, global1.a.x != false)));
    global0 = select(vec2<bool>(false, !global1.a.x), global1.a.wy, select(select(!(!arg_0.a.ww), global1.a.yz, global1.a.wy), vec2<bool>(!(global1.a.x || global1.a.x), !global1.a.x), !any(select(vec2<bool>(global1.a.x, global0.x), vec2<bool>(true, global0.x), global1.a.x))));
    let var_1 = global1.a;
    let var_2 = var_1.zx;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-739f, -1121f)) * 870f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, -1364f), -950f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18569u, 27u)]) * global2[_wgslsmith_index_u32(~var_0.x, 27u)])))), abs(arg_1.b), firstLeadingBit(~(~u_input.b)), vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1.e.x), vec2<u32>(0u, 14482u))) >> (_wgslsmith_mod_u32(~1u, u_input.d >> (4294967295u % 32u)) % 32u), select(_wgslsmith_dot_vec2_u32(countOneBits(var_0.xz), min(u_input.e, vec2<u32>(29236u, 23240u))), 42557u, true)), select(~(vec4<u32>(u_input.e.x, var_0.x, 0u, 1u) | select(arg_1.e, vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.a), arg_0.a)), vec4<u32>(~var_0.x, 1u, var_0.x, arg_1.d.x) ^ var_0, var_1.x));
    return _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-var_3.a));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_2(select(!vec4<bool>(global1.a.x, true, true, true), select(global1.a, vec4<bool>(true, true, global0.x, false), global0.x), vec4<bool>(global1.a.x, false, false, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_div_i32(0i, u_input.c), (u_input.b & vec2<i32>(40172i, 0i)) >> (u_input.e % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.e.x, 14048u, 18736u), vec3<u32>(u_input.a, u_input.a, u_input.d), true), vec3<u32>(4294967295u, 72408u, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 11498u, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.d))), _wgslsmith_f_op_f32(max(-845f, _wgslsmith_f_op_f32(func_3(Struct_3(11666u, vec3<i32>(36056i, -40747i, u_input.b.x)), firstTrailingBit(0i))))))), -u_input.c, u_input.b >> (~vec2<u32>(_wgslsmith_mult_u32(4394u, 20280u), ~1058u) % vec2<u32>(32u)), select(vec3<u32>(u_input.d, u_input.e.x, firstTrailingBit(4294967295u)), ~(~(vec3<u32>(u_input.d, 10319u, 14546u) << (vec3<u32>(u_input.a, 4294967295u, 1u) % vec3<u32>(32u)))), global1.a.xzw), ~countOneBits(reverseBits(vec4<u32>(u_input.a, u_input.d, 4294967295u, u_input.e.x)) | ~vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u)));
    let var_1 = !(!global1.a.x | !global1.a.x);
    var var_2 = u_input.c;
    var_2 = var_0.c.x << (_wgslsmith_mod_u32(var_0.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.e, max(vec4<u32>(66489u, 15265u, 0u, 115314u), var_0.e)), _wgslsmith_clamp_u32(26185u << (0u % 32u), abs(var_0.d.x), 0u))) % 32u);
    global2 = array<f32, 27>();
    return Struct_2(select(!select(vec4<bool>(true, false, var_1, true), global1.a, !vec4<bool>(var_1, false, global0.x, global1.a.x)), select(select(vec4<bool>(false, var_1, true, var_1), global1.a, false), !vec4<bool>(true, false, true, global1.a.x), true), !global0.x));
}

fn func_1() -> Struct_3 {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1540f, global2[_wgslsmith_index_u32(u_input.a, 27u)], -463f) + vec3<f32>(global2[_wgslsmith_index_u32(18200u, 27u)], -188f, -1514f)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -320f, global2[_wgslsmith_index_u32(u_input.d, 27u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.e.x, 27u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, 501f, 865f) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.d, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]))), func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-573f, global2[_wgslsmith_index_u32(39249u, 27u)], -1316f), vec3<f32>(-335f, global2[_wgslsmith_index_u32(18442u, 27u)], 1048f)))))).a.wyx)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(func_2(var_0).a), Struct_1(var_0.x, reverseBits(u_input.b.x), vec2<i32>(0i, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 44592u, u_input.a), vec3<u32>(4294967295u, u_input.d, u_input.d)), vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, u_input.a)), _wgslsmith_div_f32(-1916f, global2[_wgslsmith_index_u32(1u << (1u % 32u), 27u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(-var_0.x)))))), 54855i, _wgslsmith_sub_vec2_i32(-(~vec2<i32>(u_input.b.x, -1i) & u_input.b), vec2<i32>(u_input.b.x, abs(14532i))), min(firstLeadingBit(vec3<u32>(73340u, countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 68605u, u_input.d, u_input.e.x), vec4<u32>(26268u, 29807u, u_input.a, 4482u)))), vec3<u32>(0u, firstTrailingBit(u_input.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(10097u, u_input.d), vec2<u32>(u_input.e.x, u_input.a))) ^ ~(~vec3<u32>(1u, 0u, 38434u))), vec4<u32>(~(~_wgslsmith_add_u32(1u, u_input.a)), firstTrailingBit(_wgslsmith_mult_u32(u_input.e.x, u_input.a)) ^ ~_wgslsmith_mod_u32(u_input.a, u_input.e.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 4294967295u), firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.d, u_input.d))), vec4<u32>(~0u, ~33789u, ~u_input.a, ~u_input.d)), countOneBits(~u_input.a)));
    let var_2 = var_1.d.zy;
    var var_3 = select(!select(global1.a.yz, !(!global1.a.wy), global1.a.x), vec2<bool>(global0.x, all(!vec3<bool>(global1.a.x, global0.x, true))), 544f == _wgslsmith_f_op_f32(step(var_0.x, 803f)));
    return Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2.x, var_1.d.x, _wgslsmith_sub_u32(var_1.e.x, 0u)), vec4<u32>(u_input.e.x, var_2.x, 32304u, var_2.x)), -(firstLeadingBit(vec3<i32>(u_input.b.x, -2147483647i, -5367i)) & _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, -54809i, -2147483647i), reverseBits(vec3<i32>(var_1.c.x, u_input.b.x, var_1.b)))));
}

fn func_5(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = u_input.e;
    let var_1 = func_1();
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(878f, global2[_wgslsmith_index_u32(47841u, 27u)], -680f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 27u)], -371f, 350f) * vec3<f32>(global2[_wgslsmith_index_u32(5048u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], 1400f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1258u, 27u)], 237f, global2[_wgslsmith_index_u32(var_0.x, 27u)]) + vec3<f32>(1479f, global2[_wgslsmith_index_u32(1u, 27u)], -1213f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(var_1.a, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], 904f), vec3<f32>(global2[_wgslsmith_index_u32(14333u, 27u)], global2[_wgslsmith_index_u32(var_0.x, 27u)], -102f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_1.a, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], 447f) - vec3<f32>(global2[_wgslsmith_index_u32(var_1.a, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], -258f)))))))).a;
    let var_3 = _wgslsmith_mult_vec4_i32(~(vec4<i32>(arg_0.b.x, var_1.b.x, 62905i, var_1.b.x) >> (~vec4<u32>(11768u, u_input.e.x, 4294967295u, 0u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), _wgslsmith_clamp_i32(u_input.c, var_1.b.x, u_input.b.x)), vec2<i32>(countOneBits(var_1.b.x), 1i)), ~(-1i), _wgslsmith_mult_i32(var_1.b.x, var_1.b.x & u_input.c), ~1i));
    let var_4 = -18226i;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(var_4, 7609i, max(var_1.b.x, arg_0.b.x), func_1().b.x), -abs(vec4<i32>(var_3.x, ~var_1.b.x, max(var_4, -1600i), -19051i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(func_5(func_1()), abs(abs(vec4<i32>(_wgslsmith_mult_i32(21317i, 21908i), _wgslsmith_add_i32(u_input.b.x, -2147483647i), u_input.b.x ^ u_input.c, ~u_input.c))));
    let var_1 = _wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.c, var_0.x, var_0.x, var_0.x)) ^ vec4<i32>(abs(-1i), _wgslsmith_clamp_i32(var_0.x >> (u_input.d % 32u), var_0.x, func_1().b.x), 1i, _wgslsmith_add_i32(-77813i, -10678i)), vec4<i32>(7928i, 2147483647i, _wgslsmith_add_i32(u_input.b.x, -1i) | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-31947i, -52867i), var_0.yz), ~vec2<i32>(var_0.x, -16967i)), -48205i));
    var var_2 = u_input.a;
    global1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1410f, -194f, global2[_wgslsmith_index_u32(u_input.e.x, 27u)])) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-123f, 1075f, global2[_wgslsmith_index_u32(u_input.a, 27u)]))))))).a);
    var var_3 = Struct_3(1u, ~(_wgslsmith_clamp_vec3_i32(var_0.ywx, vec3<i32>(1i, -2147483647i, -2147483647i), var_1.wxz) ^ var_1.zzy) | _wgslsmith_sub_vec3_i32(countOneBits(-var_1.xzz), -(var_1.wyy << (vec3<u32>(62299u, 72108u, 30107u) % vec3<u32>(32u)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_2(global1.a), Struct_1(-444f, var_1.x, vec2<i32>(var_3.b.x, 2147483647i), vec3<u32>(u_input.e.x, 47869u, u_input.a), vec4<u32>(41303u, 20920u, 0u, u_input.a)), global2[_wgslsmith_index_u32(91005u, 27u)]))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e.x, 27u)] * global2[_wgslsmith_index_u32(var_3.a, 27u)])))))), func_5(func_1()).x, vec2<i32>(1i, -_wgslsmith_div_i32(select(1i, 6040i, false), 1i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~29252u, firstTrailingBit(var_3.a)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a, var_3.a, 0u), vec3<u32>(u_input.d, u_input.e.x, 22907u)))), vec4<u32>(func_1().a, countOneBits(3911u), var_3.a, min(var_3.a, ~var_3.a)));
    let var_5 = Struct_3(0u, (var_0.wxx ^ vec3<i32>(~0i, var_4.b, var_1.x)) | max(~var_1.wwz, func_5(func_1()).zzx));
    var var_6 = func_1();
    let var_7 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, ~(_wgslsmith_mult_vec2_u32(vec2<u32>(36045u, 4294967295u) >> (u_input.e % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(var_5.a, 1u))) | vec2<u32>(20900u, var_6.a)));
}

