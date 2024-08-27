struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(32562i, 0i, 2147483647i, 0i), vec4<i32>(-1i, 1i, 1i, 2147483647i), vec4<i32>(-66834i, -2582i, 2147483647i, -14958i), vec4<i32>(56712i, 0i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), -7868i, -38186i, i32(-2147483648)), vec4<i32>(-1i, 52522i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -50687i, -38216i, 2147483647i), vec4<i32>(0i, 2147483647i, 0i, 1i), vec4<i32>(-2876i, -25144i, i32(-2147483648), 13560i), vec4<i32>(-1i, -1i, i32(-2147483648), 77663i), vec4<i32>(2147483647i, 0i, 2147483647i, -40082i), vec4<i32>(2147483647i, 33714i, 57383i, -1i), vec4<i32>(-27205i, i32(-2147483648), -43045i, -21705i), vec4<i32>(-2528i, 11567i, -8168i, 13231i), vec4<i32>(2147483647i, -6897i, -1i, -81802i), vec4<i32>(8381i, 2147483647i, 1i, 2125i), vec4<i32>(0i, -1i, -4602i, i32(-2147483648)), vec4<i32>(41155i, -48070i, 33776i, i32(-2147483648)), vec4<i32>(0i, -10133i, 2147483647i, -51991i), vec4<i32>(0i, 18187i, 4196i, -1i), vec4<i32>(6144i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(-7842i, -14203i, 19589i, -13563i), vec4<i32>(61807i, -13385i, i32(-2147483648), 2147483647i), vec4<i32>(-64071i, 2147483647i, 4861i, 17139i), vec4<i32>(i32(-2147483648), 0i, 0i, -1i), vec4<i32>(-38589i, 27134i, -1i, i32(-2147483648)));

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: array<Struct_3, 1>;

var<private> global4: i32 = 0i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_5 {
    global4 = firstTrailingBit(-_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.wy));
    var var_0 = u_input.a.x;
    let var_1 = Struct_5(565f, 1112f);
    global2 = array<vec4<u32>, 31>();
    var var_2 = ~_wgslsmith_clamp_vec4_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1100u, reverseBits(1u)), 31u)], firstLeadingBit(~u_input.c) & u_input.c, vec4<u32>(u_input.a.x, (21406u ^ u_input.c.x) | 1u, _wgslsmith_sub_u32(1u, min(1u, u_input.c.x)), 0u));
    return var_1;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: u32) -> i32 {
    let var_0 = vec2<u32>(~(~firstTrailingBit(1u << (arg_2 % 32u))), 44928u);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~6454u), 43155u), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_clamp_u32(u_input.c.x, 70370u, 4294967295u)), arg_2, ~arg_2 | _wgslsmith_dot_vec2_u32(u_input.c.yx, var_0))), 15u)];
    var var_2 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x, min(u_input.b.x, u_input.b.x))), select(-_wgslsmith_sub_vec3_i32(u_input.b.wxx | u_input.b.xxz, u_input.b.yxw), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b.x), -u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, ~u_input.b.x, u_input.b.x ^ u_input.b.x)), vec3<bool>(!all(vec3<bool>(true, false, false)), true, true)));
    var var_3 = arg_0;
    var_3 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), u_input.b.x), vec2<i32>(u_input.b.x | 0i, -32085i)), u_input.b.x);
    return 0i;
}

fn func_1() -> Struct_2 {
    global4 = func_3(func_2(countOneBits(-2147483647i), u_input.b.x), u_input.c.x, 4294967295u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), countOneBits(vec2<u32>(109291u, u_input.a.x))), max(13238u, _wgslsmith_mult_u32(4294967295u, u_input.a.x))));
    global4 = _wgslsmith_mult_i32(1i, u_input.b.x) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], vec4<u32>(77095u, 1u, u_input.a.x, u_input.c.x))), global2[_wgslsmith_index_u32(u_input.a.x, 31u)] >> (((vec4<u32>(u_input.c.x, 61675u, 74381u, u_input.c.x) & global2[_wgslsmith_index_u32(u_input.a.x, 31u)]) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % 32u);
    let var_0 = ((_wgslsmith_clamp_vec2_u32(min(u_input.c.wz, u_input.c.ww), u_input.c.yz << (vec2<u32>(u_input.a.x, u_input.c.x) % vec2<u32>(32u)), u_input.c.yw) ^ _wgslsmith_sub_vec2_u32(~u_input.a, u_input.c.xy)) << (u_input.c.zw % vec2<u32>(32u))) >> (~(~(~u_input.a)) % vec2<u32>(32u));
    let var_1 = global1[_wgslsmith_index_u32(~abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(26811u, 4294967295u, 17335u), u_input.c.zwx), u_input.c.xww)), 15u)];
    let var_2 = _wgslsmith_div_u32(~reverseBits(~var_0.x), ~(~u_input.a.x));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(round(849f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-785f, 1147f, -1523f, -1023f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1516f, 809f, -2569f, 1146f), vec4<f32>(-253f, -1415f, 857f, -2124f))))))), -485f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstLeadingBit(reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))) >> (~global2[_wgslsmith_index_u32(0u, 31u)] % vec4<u32>(32u)));
    let var_1 = func_1();
    global0 = array<vec4<i32>, 26>();
    var var_2 = 67727u >> (_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 52867u, 4294967295u), global2[_wgslsmith_index_u32(u_input.c.x, 31u)] & vec4<u32>(u_input.a.x, u_input.c.x, 25973u, u_input.c.x)), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x) >> (firstLeadingBit(34743u) % 32u), 31u)]), ~_wgslsmith_mod_u32(50108u, 4294967295u)) % 32u);
    global2 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

