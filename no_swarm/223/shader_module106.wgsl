struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    global2 = array<vec4<i32>, 1>();
    var var_0 = global3.b;
    var var_1 = ~min(vec4<u32>(26409u, global0.a.c, firstLeadingBit(~15670u), u_input.c), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.c, 1u, 56298u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.c, global0.a.c, global3.c, 0u), vec4<u32>(4294967295u, global0.b.c, u_input.c, u_input.c)), vec4<u32>(global3.c, global3.c, u_input.c, global0.b.c) & vec4<u32>(global0.b.c, 0u, 0u, global0.b.c)));
    let var_2 = !arg_1;
    let var_3 = _wgslsmith_div_vec3_i32(u_input.b.zzz, u_input.b.ywz) & u_input.b.wwx;
    return _wgslsmith_dot_vec3_u32(var_1.wwz, vec3<u32>(1u, var_1.x, global3.c));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global0.a.a, global0.b.b.b);
    global3 = Struct_2(!(!vec4<bool>(all(var_0.a.zx), false, true, any(var_0.a))), Struct_1(select(global3.b.a, vec4<bool>(true, false && var_0.a.x, global0.a.b.a.x && global0.b.b.a.x, global3.b.a.x), false), global3.b.b), global3.c, false);
    var var_1 = ~vec2<u32>(4294967295u, global0.a.c);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~global0.a.c, 0u, ~(~u_input.c), _wgslsmith_sub_u32(global0.a.c, global3.c)), vec4<u32>(func_3(333f, vec4<bool>(global3.b.a.x, false, global0.b.b.a.x, global3.a.x), u_input.b.yw, u_input.a) & _wgslsmith_sub_u32(u_input.c, 4294967295u), max(global3.c ^ 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global3.c, 0u), vec4<u32>(46884u, global0.a.c, 0u, 20770u))), ~(~1u), abs(global3.c >> (global0.a.c % 32u)))), ~(~(vec4<u32>(4833u, var_1.x, 40775u, 1u) | vec4<u32>(u_input.c, var_1.x, global3.c, 0u))) | ~vec4<u32>(12781u, _wgslsmith_add_u32(9322u, global3.c), ~u_input.c, select(15811u, 4294967295u, global0.a.d)), vec4<u32>(1u, u_input.c, 4294967295u, min(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48404u, 1u, global3.c), vec4<u32>(27994u, var_1.x, global3.c, 49332u))) | _wgslsmith_mult_u32(4317u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 27915u), vec4<u32>(4294967295u, u_input.c, global3.c, global0.a.c)))));
    var var_3 = global0.b;
    return Struct_2(var_3.a, global1[_wgslsmith_index_u32(29939u, 4u)], reverseBits(max(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17841u, var_3.c, 36883u), var_2.xyx), _wgslsmith_clamp_u32(var_3.c, 0u, var_2.x)), ~(var_2.x ^ global3.c))), !(any(var_3.a.wzy) & false));
}

fn func_1() -> StorageBuffer {
    var var_0 = global3.a.x;
    var var_1 = func_2();
    let var_2 = firstLeadingBit(~_wgslsmith_div_u32(~var_1.c, var_1.c & 0u) & 18308u);
    let var_3 = select(vec3<i32>(global0.b.b.b, firstTrailingBit(-14968i), _wgslsmith_mult_i32(max(global3.b.b, global0.a.b.b & global0.b.b.b), global3.b.b)), max(vec3<i32>(~global3.b.b, 9431i, var_1.b.b), -(~vec3<i32>(var_1.b.b, -28281i, -54759i))) >> ((vec3<u32>(1u, ~1u, ~global0.b.c) ^ firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, 21179u, global3.c), vec3<u32>(u_input.c, var_2, 30277u)))) % vec3<u32>(32u)), !vec3<bool>(false, u_input.b.x >= -30119i, _wgslsmith_sub_i32(var_1.b.b, global0.b.b.b) <= ~global0.a.b.b));
    var var_4 = (vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~global0.b.c), 4294967295u, ~(~20637u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(52154u, 0u, global3.c), max(var_1.c, 46517u))) >> ((countOneBits(~vec4<u32>(4294967295u, 60092u, 1u, 0u)) | firstTrailingBit(vec4<u32>(16758u, 3141u, 4294967295u, 78053u))) % vec4<u32>(32u))) << (abs(~(vec4<u32>(var_2, global0.b.c, 0u, global3.c) << (~vec4<u32>(68191u, var_1.c, global3.c, var_2) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return StorageBuffer(_wgslsmith_f_op_f32(630f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + 1000f))), abs(vec3<u32>(abs(74908u), countOneBits(var_1.c), global0.b.c)) | _wgslsmith_sub_vec3_u32(vec3<u32>(global3.c ^ var_4.x, ~global0.a.c, 0u), var_4.yzw));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

