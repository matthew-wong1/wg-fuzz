struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(10716i, Struct_3(vec2<f32>(435f, -476f), -49425i), vec3<bool>(true, false, true), 764f, 0u);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1i, vec3<i32>(-1i, -1i, -18126i), -16880i, 90120u), Struct_1(-19054i, vec3<i32>(-13119i, 1i, -1i), -5034i, 1u), Struct_1(2147483647i, vec3<i32>(0i, 73417i, -7036i), 5802i, 80074u), Struct_1(0i, vec3<i32>(0i, 0i, -7434i), 2147483647i, 4294967295u), Struct_1(-1i, vec3<i32>(1i, 10926i, 0i), 28510i, 0u), Struct_1(i32(-2147483648), vec3<i32>(0i, -2585i, 20233i), 1i, 1u), Struct_1(i32(-2147483648), vec3<i32>(-36447i, 13333i, -36356i), 31767i, 0u), Struct_1(35657i, vec3<i32>(-4286i, 0i, i32(-2147483648)), -30907i, 58731u), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, i32(-2147483648), -1i), -23969i, 0u), Struct_1(0i, vec3<i32>(42957i, 0i, 41684i), -15502i, 14947u), Struct_1(-7535i, vec3<i32>(-35503i, i32(-2147483648), 1i), i32(-2147483648), 31365u), Struct_1(1i, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), -21650i, 4294967295u), Struct_1(0i, vec3<i32>(9097i, 0i, 0i), 68654i, 45256u), Struct_1(0i, vec3<i32>(21625i, 2147483647i, 0i), 1i, 4294967295u), Struct_1(-1i, vec3<i32>(-25300i, 31653i, 1i), -19739i, 3154u), Struct_1(-245i, vec3<i32>(-1i, i32(-2147483648), 28548i), -1i, 21484u), Struct_1(0i, vec3<i32>(43782i, 5472i, 2147483647i), 2147483647i, 0u), Struct_1(i32(-2147483648), vec3<i32>(11214i, -8832i, 4184i), 44526i, 115484u), Struct_1(2147483647i, vec3<i32>(0i, -47656i, 1i), i32(-2147483648), 0u), Struct_1(2147483647i, vec3<i32>(2147483647i, 1i, 0i), 0i, 41258u), Struct_1(44953i, vec3<i32>(2147483647i, 19287i, -20951i), 19048i, 0u), Struct_1(70351i, vec3<i32>(0i, 19341i, -3001i), -16670i, 67224u), Struct_1(15605i, vec3<i32>(-58905i, i32(-2147483648), -1195i), 0i, 33096u), Struct_1(0i, vec3<i32>(21489i, 0i, 55921i), -25720i, 54316u), Struct_1(852i, vec3<i32>(39815i, -47336i, -1i), -19485i, 39245u), Struct_1(1i, vec3<i32>(0i, 8598i, -1i), -1i, 17919u), Struct_1(-13504i, vec3<i32>(0i, 1i, 1i), 47881i, 2685u), Struct_1(-1i, vec3<i32>(20577i, 30598i, 37733i), 28557i, 4294967295u));

var<private> global3: array<u32, 28>;

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 28>();
    global2 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, global0.b.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(135f, -834f, -523f, 1584f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1207f, global0.b.a.x, global0.d, global0.d), vec4<f32>(-1817f, global0.d, global0.d, global0.b.a.x), vec4<bool>(false, true, false, global0.c.x)))) + vec4<f32>(-1797f, _wgslsmith_f_op_f32(min(747f, global0.b.a.x)), _wgslsmith_f_op_f32(select(global0.b.a.x, 411f, false)), -748f))), max(vec3<i32>(_wgslsmith_mult_i32(-2946i, -24719i), global1.x, u_input.a), max(~_wgslsmith_mult_vec3_i32(vec3<i32>(-35113i, u_input.a, -44483i), vec3<i32>(2147483647i, 2147483647i, global1.x)), ~(~vec3<i32>(global0.a, 1i, -2147483647i)))), vec2<u32>(~(~1u), 56052u) | u_input.d);
}

